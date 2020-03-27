## 環境構築
### アプリ初期設定
```
$ docker-compose build
$ docker-compose run web bundle install
```

### データベース初期設定
```
$ docker-compose run web bundle exec rails db:create
$ docker-compose run web bundle exec rails db:migrate
$ docker-compose run web bundle exec rails db:seed
```

## 起動・終了

### 起動コマンド

以下のコマンドで起動します。

```
$ docker-compose up
```

### 終了
Ctrl+C
