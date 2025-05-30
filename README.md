# RaiseTech-AWS

## 概要

RaiseTech の [AWS フルコース](https://raise-tech.net/courses-lp/aws-full-course)課題用のリポジトリです。

## 最終成果物

CircleCI で以下を実行し、サンプルアプリケーションのデプロイを自動化しました。  
詳細は[こちら](lecture13.md)を参照。

1. cfn-lint で CloudFormation の構文チェック
2. CloudFormation で AWS リソースを作成
3. Ansible でサンプルアプリケーションが EC2 上で動作するようセットアップ
4. ServerSpec で EC2 サーバのテスト

### 構成図

![aws_diagram](img/lecture14/aws_architecture_diagram.png)

## 課題内容と対応するファイル

| 課題 | 実施内容                                                                                                             | 対応ファイル                                     |
| ---- | -------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------ |
| 1    | AWS アカウントの作成、ルートユーザーと IAM ユーザーの MFA 保護、Cloud9 で HelloWorld                                 | -                                                |
| 2    | GitHub リポジトリの作成、Pull Request の提出、Cloud9 の Git 設定                                                     | -                                              |
| 3    | Cloud9 上にサンプルアプリケーションをデプロイ、AP サーバ・DB サーバについて調べる                                    | [lecture03.md](lecture03.md) |
| 4    | AWS で VPC・EC2・RDS の作成、EC2 から RDS へ接続                                                                     | [lecture04.md](lecture04.md) |
| 5    | EC2 上にサンプルアプリケーションをデプロイ、ALB の追加、S3 の追加、構成図の作成                                      | [lecture05.md](lecture05.md) |
| 6    | CloudTrail から AWS 利用記録を抽出、CloudWatch アラームの設定・Amazon SNS でメール通知設定、AWS 利用料の見積もり作成 | [lecture06.md](lecture06.md) |
| 7    | 作成した環境の脆弱性と対策を検討                                                                                     | [lecture07.md](lecture07.md)                     |
| 8    | 課題無し                                                                                                             | -                                                |
| 9    | 課題無し                                                                                                             | -                                                |
| 10   | CloudFormation で AWS 環境をコード化                                                                                 | [lecture10.md](lecture10.md) |
| 11   | ServerSpec で EC2 サーバのテスト実施                                                                                 | [lecture11.md](lecture11.md) |
| 12   | CircleCI をリポジトリに組み込み                                                                                      | [lecture12.md](lecture12.md) |
| 13   | CircleCI に CloudFormation、Ansible、ServerSpec の処理を組み込み                                                     | [lecture13.md](lecture13.md) |
| 14   | AWS 構成図、自動化処理がわかる図、リポジトリの README 作成                                                           | [lecture14.md](lecture14.md) |
| 15   | 課題無し                                                                                                             | -                                                |
| 16   | 課題無し                                                                                                             | -                                                |

各課題は Pull Request で提出しています。  
[Pull Request 一覧](https://github.com/devac-tech/raisetech/pulls?q=is%3Apr+is%3Aclosed)