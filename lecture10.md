# 第１０回課題
* ※CFn→CloudFormation

## CFnに使用したymlファイル
* [template.yaml](template.yaml)

## CFnで作成したリソース
* VPC
![vpc](img/lecture10/Screenshot-2025-05-vpc.png)
* EC2
![ec2](img/lecture10/Screenshot-2025-05-ec2.png)
  - EC2のインバウンド
  ![EC2のインバウンド](img/lecture10/Screenshot-2025-05-ec2-inout.png)

* RDS

![rds](img/lecture10/Screenshot-2025-05-rds.png)
* ELB
![elb](img/lecture10/Screenshot-2025-05-lb.png)

## CFnで作成したリソースに接続できるか確認
* CFnで作成したリソース間の接続(EC2→RDS)
![CFnで作成したec2からrdsに接続成功](img/lecture10/SScreenshot-2025-05-rds-02.png)
