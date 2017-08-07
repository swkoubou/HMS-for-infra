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
username=root
password=<docker-compose.ymlに記載されているMySQコンテナのパスワード>
host=mysql
dbname=gestion
```

リポジトリのルートでコンテナの起動
```bash
$ docker-compose build --no-cache
$ docker-compose up -d
```
APIコンテナから初期テーブルを作成するコマンドを実行する
```bash
$ docker exec -it hmsforinfra_api_1 /bin/bash # APIコンテナの/usr/src/appディレクトリにログインする
/usr/src/app# export FLASK_APP=gestion/__init__.py #flask commandの環境変数設定
/usr/src/app# flask initdb # 初期テーブルの作成
```

## 環境
docker         17.06.0~ce<br>
docker-compose 1.14.0
