## アプリケーション名
ラクボ

## 概要
一ヶ月に1回登録するだけでお金の管理ができる家計簿。
毎日登録する家計簿とは違い手軽に管理ができ、毎月の貯金額も最初に決めるので貯金も確実に貯めていくことができる仕組みとなっている。

## URL
https://rakubo0424.herokuapp.com/

## テスト用アカウント
・Basic認証ID：admin
・Basic認証パスワード：2222
・アドレス：1234@gmail.com
・パスワード：abcdefg12

## 利用方法
・ 新規アカウントを作成

・ 右下の投稿ボタンから投稿画面へ遷移し管理簿の内容を投入
  必須項目に入力後、任意で支出口座が複数ある場合は投入したりカテゴリ毎に金額を投入

・ 登録後はトップページの下に投入した概要が表示され、クリックすると登録した詳細が閲覧可能

・ 詳細画面から再編集や削除が可能

## アプリケーションを作成した背景
今まで私自身お金の管理は給料が振り込まれたタイミングで、お金を振り分けて管理していた。
スマホのメモ帳機能に金額などを入れていたが、毎月、前月分の内容をコピーして、見返したりする際にも下の方にスクロールして見ており不便さを感じていた。通常の管理簿アプリでは毎日つけるものしかなく、私のやり方とあった家計簿がなかったため自分で使いやすい家計簿を作ってみたいと考え作成した。

## 工夫したポイント
・投稿画面で、金額を自分で計算すると手間なので一目で差額がわかるよう機能を実装した。
また、投稿画面は縦に長くなるので金額投入時にすぐわかるように、この機能は画面に固定する形でスクロール時もすぐに金額がわかるようにした。
・投稿機能で支出のカテゴリを登録する際に、使い勝手を考慮した結果、登録済みのカテゴリ以外にも自由に登録できる欄もあった方が便利であるため、自由登録できる欄を設けた。
・見た目で気分が上がるように自分の好きな水色で全体的に統一した。
・貯金額が具体的にいくら貯まったかわかる方がモチベーションも維持できる考え、貯金額の合計がTOP画面で表示されるようにした。

## 洗い出した要件
https://docs.google.com/spreadsheets/d/1RHoc-swkgrImLceivdY4ngvRlb524aPtwhxyJV6TQYQ/edit#gid=982722306

## 実装した機能についての画像やGIFおよびその説明
・最低限必要な情報の登録で利用できるようにユーザー管理機能を実装
[![Image from Gyazo](https://i.gyazo.com/27852e6af27b5bd675bf65385d1f0574.png)](https://gyazo.com/27852e6af27b5bd675bf65385d1f0574)
・トップ画面でユーザーの貯金額の合計が表示される
[![Image from Gyazo](https://i.gyazo.com/3cc733caa966b2f431e4d9582d473596.jpg)](https://gyazo.com/3cc733caa966b2f431e4d9582d473596)
・トップ画面で今まで投稿した管理簿が一覧で見れる
[![Image from Gyazo](https://i.gyazo.com/f6585a9e32281711e3ccd274d5a19668.png)](https://gyazo.com/f6585a9e32281711e3ccd274d5a19668)
・投稿画面では右下に収入と支出の差額が一目でわかるように計算機能をJava Scriptで実装
[![Image from Gyazo](https://i.gyazo.com/880e417fcbe1ee97e0b350dfe8ca0ad8.png)](https://gyazo.com/880e417fcbe1ee97e0b350dfe8ca0ad8)
・投稿詳細画面では投稿した内容の確認と編集と削除ができる
[![Image from Gyazo](https://i.gyazo.com/a9e552eb9dfaf53e9d33c57fbf96bd4e.png)](https://gyazo.com/a9e552eb9dfaf53e9d33c57fbf96bd4e)

## 実装予定の機能
マイページを実装中。
マイページでは貯金の目標を登録できるようにするのとメモ機能を追加予定
コピー機能を実装予定。先月分のデータをコピーし投稿できる機能。

## データベース設計
[![Image from Gyazo](https://i.gyazo.com/dd1e7c5eae09c4c0f36cb03f377c1713.png)](https://gyazo.com/dd1e7c5eae09c4c0f36cb03f377c1713)

## usersテーブル

| Column               | Type       | Options                        |
| -------------------- | ---------- | ------------------------------ |
| nick_name            | string     | null: false                    |
| email                | string     | null: false, unique: true      |
| encrypted_password   | string     | null: false                    |

### Association
- has_many :moneys

## moneysテーブル

| Column               | Type       | Options                        |
| -------------------- | ---------- | ------------------------------ |
| month                | string     | null: false                    |
| income_account_name  | string     | null: false                    |
| payment_account1_name| string     | null: false                    |
| payment_account2_name| string     |                                |
| payment_account3_name| string     |                                |
| income_money         | integer    | null: false                    |
| payment1_money       | integer    | null: false                    |
| payment2_money       | integer    |                                |
| payment3_money       | integer    |                                |
| payment4_money       | integer    |                                |
| payment5_money       | integer    |                                |
| payment6_money       | integer    |                                |
| payment7_money       | integer    |                                |
| payment8_money       | integer    |                                |
| payment9_money       | integer    |                                |
| payment10_money      | integer    |                                |
| payment11_money      | integer    |                                |
| item_name1_id        | integer    | null: false                    |
| item_name2_id        | integer    |                                |
| item_name3_id        | integer    |                                |
| item_name4_id        | integer    |                                |
| item_name5_id        | integer    |                                |
| item_name6_id        | integer    |                                |
| item_name7_id        | integer    |                                |
| item_name8_id        | integer    |                                |
| item_name1_self      | integer    |                                |
| item_name2_self      | integer    |                                |
| item_name3_self      | integer    |                                |
| user                 | references | null: false, foreign_key: true |

### Association
- belongs_to :user

## 画面遷移図
[![Image from Gyazo](https://i.gyazo.com/703ff6d7b97edc1470fad12974fe807d.png)](https://gyazo.com/703ff6d7b97edc1470fad12974fe807d)

## 開発環境
Ruby,Ruby on Rails,Java Script,Visual Studio Code,MySQL,Github,

## ローカルでの動作方法
以下のコマンドを順に実行。

% git clone https://github.com/harukakak/rakubo

% cd rakubo

% bundle install

% yarn install