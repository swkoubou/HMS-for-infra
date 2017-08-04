# HMS-for-infra
HMSのインフラリポジトリ

## 設定
HMS-for-infraのclone
```bash
$ git clone git@github.com:swkoubou/HMS-for-infra.git
$ cd HMS-for-infra/
```
**これより下の作業はプロジェクトのルートで行います**

APIリポジトリのclone(※2017/05/27日現在asset用のリポジトリはテスト用のディレクトリを使用しています)
```bash
$ cd api
$ git clone git@github.com:swkoubou/gestion-api.git
```

APIサーバの設定
```bash
$ cd api/HMS-for-API
$ mv app.cfg.sample app.cfg
$ vim app.cfg
```
```python
DEBUG=True
TESTING=False
HOST='localhost'
PORT=5000
SQLALCHEMY_DATABASE_URI=''
```
`HOST`を環境に応じて変更してください,`SQLALCHEMY_DATABASE_URI`は`sqlite:////'適当なpath'/test.db`
> 例:local環境) `HOST='localhost'`,`SQLALCHEMY_DATABASE_URI='sqlite:////tmp/test.db'`  
> 例:グローバル環境) `HOST='hoge.com'`,`SQLALCHEMY_DATABASE_URI='sqlite:////tmp/test.db'`

リポジトリのルートでコンテナの起動
```bash
$ docker-compose up -d --build
```
※apiコンテナにログインして`service nginx start`

## 環境
docker,docker-composeがインストールされていること
