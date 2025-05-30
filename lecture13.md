## 第 13 回課題

CirclrCI のサンプルに ServerSpec と Ansible の処理を追加。  
[CircleCI 実行用リポジトリ](https://github.com/devac-tech/lec13_ansible)

### 実施内容

以下を CircleCI で自動実行するよう設定。

1. cfn-lint で CloudFormation の構文チェック
2. CloudFormation で AWS リソースを作成
3. Ansible でサンプルアプリケーションが EC2 上で動作するようセットアップ
4. ServerSpec で EC2 サーバのテスト

### CircleCI の実行結果

全体
![circleci_all](img/lecture13/circleci_all.png)

cfn-lint
![cfn_lint](img/lecture13/circleci_cfn-lint.png)

CloudFormation 実行
![cloudformation](img/lecture13/circleci_cloudformation.png)

Ansible 実行
![ansible1](img/lecture13/circleci_ansible1.png)
![ansible2](img/lecture13/circleci_ansible2.png)

ServerSpec 実行
![serverspec](img/lecture13/circleci_serverspec.png)

### アプリケーション動作

ALB の DNS 名にアクセスし、アプリケーションが使用できることを確認
![app](img/lecture13/app_home.png)

画像が S3 に保存されていることを確認
![s3_list](img/lecture13/s3_list.png)
![s3_pear](img/lecture13/s3_apple.png)

