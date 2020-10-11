# Relist
「思ったことを書き出す」エクスプレッシブライティングアプリです。
<br>
ノートアプリのようなデザインとなっており、タイトルで検索をかけることができます。
 
# 本番環境
URL : https://relist-29671.herokuapp.com/

basic認証
<br>
ユーザー名: admin
<br>
パスワード: 2222
<br>

ログイン画面
<br>
Eメール: apple@apple.com
<br>
パスワード: sample1
<br>

 
# 制作背景
SNSやコロナウイルスの影響でたまるストレスの改善から、ストレスや不安を解消することで幸せになる人が増えるのではないかと考え作成したアプリケーションで  す。科学的根拠に基づいたエクスプレッシブライティングアプリです。アプリ名の「Relist」は relieve stressの略称で、ストレスを解消するという意味が込められております。エクスプレッシブライティングをすることで、一人でも多くの人が不安を解消し、メンタルを安定化させることで、時間をより有意義なことに使えることを願っております。
 
# DEMO
 
![demo](https://user-images.githubusercontent.com/69156263/95674452-566aec00-0beb-11eb-9e58-2e0c9b468c36.gif)
 
※ こちらのGIFですと色の挙動が正常ではないですが、heroku上では正常に動作いたします。
 
# 工夫した点
* ストレスを想定したアプリなので、色は自然をイメージした緑がメインとなっております。
* 優しく見やすいフォント、Yu Gothic Midiumを使っております。
* シンプルで見やすいデザインを心がけており、編集画面&新規投稿画面、サインイン&サインアップ画面など、ビューごとの変化を極力少なくしました。色もシンプルにし、カラーピッカーで自分好みの色を選択しました。
* ヘッダーのアプリ名をクリックするとメイン画面に戻ることができます。
* 投稿検索機能を実装しました。タイトルに日付などを入れることで、簡単にフィルターをかけることができます。

# 開発環境
* Ruby
* Ruby on Rails
* MySQL
* Github
* Heroku
* Visual Studio Code
 
# 課題点・今後実装したい機能
* simple_formは色々と使いづらかったので、次回はform_withで統一します。
* バックエンド側が単調だったので、次回はもう少し複雑なアプリにチャレンジします。
* ビューの構成は細かく決めてから作業に取り掛かるようにします。

* 制限時間機能の実装が欲しかったです。制限時間があることでより習慣化しやすく、作業にメリハリがつけられるのではないかと考えたためです。

# DB設計

![DB設計](https://i.gyazo.com/a8dc57d3bad611000b16bb68cbc8f127.png)
 
