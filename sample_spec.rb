require 'spec_helper'

# ポート
listen_port = 80

# Nginxパッケージがインストールされているかどうかを確認
describe package('nginx') do
  it { should be_installed }
end

# Nginxサービスがsystemctlの自動起動設定になっている事を確認
describe service('nginx') do
  it { should be_enabled }
  it { should be_running }
end

# 80(HTTP)がリッスン状態である事を確認
describe port(listen_port) do
  it { should be_listening }
end

# HTTPリクエストを 127.0.0.1:80 に対して実行し、返ってくるステータスコードが200(OK)であるかを確認
describe command("curl -o /dev/null -s -w \"%{http_code}\" http://127.0.0.1:#{listen_port}/") do
  its(:stdout) { should match /^200$/ }
end

# ファイルの存在の確認
describe file('/etc/nginx/nginx.conf') do
  it { should be_file }
  it { should be_readable }
end

# サーバーにec2-userユーザーが存在するか確認
describe user('ec2-user') do
  it { should exist }
end
