# サンプルアプリケーション

このアプリケーションを土台として、タスク管理機能を持つアプリへ拡張していただきます。

## 開発環境

* AWS Cloud9
* Ruby
* Git
* Heroku

```
$ git clone https://github.com/sample-874/sample-app.git
```

上記のコマンド実行（リポジトリをクローン）後、
次のコマンドで必要になる RubyGems をインストールします。

```
$ bundle install
```

その後、データベースへのマイグレーションを実行します。

```
$ rails db:migrate
```

マイグレーション実行後、サンプルユーザーを生成します。

```
$ rails db:seed
```

これでRailsサーバーを立ち上げる準備が整いました。

```
$ rails server
```

ユーザーの新規作成やログインなどは既に出来る状態になっているはずです。

* **email** : sample@email.com
* **password** : password

 git　cloneから自分のアカウントにpushする。
 
 $ git config --global user.name "yoh-yamamura"
 
 $ git config --global user.email love.is.enemy928@gmail.com
 
 $ git config --global -l
 
 $ git init
 
 $ git remote set-url origin https://github.com/yoh-yamamura/sample-app.git
 
 $ git remote -v
 
 $ 
 
 