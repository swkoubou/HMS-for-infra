# HMS-for-infra
HMSのインフラリポジトリ

## 設定
HMS-for-infraのclone
```bash
$ git clone git@github.com:swkoubou/HMS-for-infra.git
$ cd HMS-for-infra/
```
**これより下の作業はプロジェクトのルートで行います**

APIリポジトリとassetリポジトリのclone(※2017/05/27日現在asset用のリポジトリはテスト用のディレクトリを使用しています)
```bash
$ cd api
$ git clone git@github.com:swkoubou/gestion-api.git
$ cd ../asset
$ git clone git@github.com:swkoubou/gestion.git
```

APIサーバの設定
```bash
$ cd api/gestion-api
$ cp gestion/config/systemc.cnf.sample gestion/config/systemc.cnf
$ vim gestion/config/systemc.cnf
```
```python
username=<docker-compose.ymlに記載されているMySQLコンテナのユーザー>
password=<docker-compose.ymlに記載されているMySQコンテナのパスワード>
host=<docker-compose.ymlに記載されているMySQLコンテナ名orホスト名>
dbname=gestion
```

リポジトリのルートでコンテナの起動
```bash
$ docker-compose up -d
```

## 環境
docker         17.06.0~ce

docker-compose 1.14.0
