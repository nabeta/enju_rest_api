# README

これはNext-L Enjuの書誌登録APIを開発するためのサンプルアプリケーションです。

1. アプリケーションをセットアップします。

```
$ git clone https://github.com/nabeta/enju_rest_api.git
$ cd enju_rest_api
$ bundle install
$ rake db:create
```

2. ユーザを作成します。

```
$ rails c
> User.create(email: 'next-l@example.com', password: 'testpassword')
> exit
```

3. サーバを起動します。

```
$ rails s
```

4. curlコマンドで、書誌のJSONファイルを送信します。

```
$ curl -X POST -H "Content-Type: application/vnd.api+json" \
  --user "next-l.example.com:testpassword" \
  -d @test/fixtures/files/sample.json \
  http://localhost:3000/api/manifestations
```

5. Webブラウザで http://localhost:3000/manifestations を開き、登録された書誌を確認します。

