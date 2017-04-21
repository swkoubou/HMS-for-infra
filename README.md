# HMS-for-infra
HMSのインフラリポジトリ

## 設定
HMS-for-infraのclone
```bash
$ git clone git@github.com:swkoubou/HMS-for-infra.git
$ cd HMS-for-infra/
```

APIリポジトリと静的サイトのリポジトリのclone
```bash
$ cd nginx/html/ga-back-end/
$ git clone git@github.com:swkoubou/HMS-for-API.git
$ git clone git@github.com:swkoubou/HMS-for-static.git
```

nginxのコンフィグファイルの設定
```bash
$ cd HMS-for-infra/nginx/conf/
$ mv default.conf.sample default.conf
$ vim default.conf
```
`server {}` ←serverディレクティブ（２つある）の`server_name 'your_server_domain'`の部分を各環境のドメインかIPアドレスに変更

APIサーバの設定
```bash
$ cd ga-back-end/HMS-for-API
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
`HOST`を環境に応じて変更してください,`SQLALCHEMY_DATABASE_URI`は`sqlite:///'適当なpath'/test.db`
> 例:local環境) `HOST='localhost'`,`SQLALCHEMY_DATABASE_URI='sqlite:///tmp/test.db'`  
> 例:グローバル環境) `HOST='hoge.com'`,`SQLALCHEMY_DATABASE_URI='sqlite:///tmp/test.db'`

リポジトリのルートでコンテナの起動
```bash
$ docker-compose up -d
```

## 環境
docker,docker-composeがインストールされていること
