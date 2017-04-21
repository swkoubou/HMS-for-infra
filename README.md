# HMS-for-infra
HMSのインフラリポジトリ

## 設定
環境リポジトリのclone
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
$ cd リポジトリPATH/nginx/conf/
$ mv default.conf.sample default.conf
$ vim default.conf
```
serverディレクティブ（２つある）の`server_name 'your_server_domain'`の部分を各環境のドメインかIPアドレスに変更

コンテナの起動
```bash
$ docker-compose up -d
```

## 環境
docker,docker-composeがインストールされていること
