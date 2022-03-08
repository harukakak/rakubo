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

・ 右下の保存ボタンから投稿画面へ遷移し管理簿の内容を投入
  必須項目に入力後、任意で支出口座が複数ある場合は投入したりカテゴリ毎に金額を投入

・ 登録後はトップページの下に投入した概要が表示され、クリックすると登録した詳細が閲覧可能

・ 詳細画面から再編集や削除が可能

・ マイページで投稿ボタンから目標やメモを投入
  登録後はマイページから編集や削除が可能

## アプリケーションを作成した背景
今まで私自身お金の管理は給料が振り込まれたタイミングで、お金を振り分けて管理していた。
スマホのメモ帳機能に金額などを入れていたが、毎月、前月分の内容をコピーして、見返したりする際にも下の方にスクロールして見ており不便さを感じていた。通常の管理簿アプリでは毎日つけるものしかなく、私のやり方とあった家計簿がなかったため自分で使いやすい家計簿を作ってみたいと考え作成した。

## 工夫したポイント
・投稿画面で、金額を自分で計算すると手間なので一目で差額がわかるよう機能を実装した。
また、投稿画面は縦に長くなるので金額投入時にすぐわかるように、この機能は画面に固定する形でスクロール時もすぐに金額がわかるようにした。

・支出の内容が毎月そんなに項目など変化がないと考え、コピー機能を追加した。直近のデータを投稿時に反映させることが可能である。

・投稿機能で支出のカテゴリを登録する際に、使い勝手を考慮した結果、登録済みのカテゴリ以外にも自由に登録できる欄もあった方が便利であるため、自由登録できる欄を設けた。

・見た目で気分が上がるように自分の好きな水色で全体的に統一した。

・貯金額が具体的にいくら貯まったかわかる方がモチベーションも維持できる考え、貯金額の合計がTOP画面で表示されるようにした。

・副業をしている人も多いため、収入が一つとは限らないから、家計簿登録画面で収入口座を任意で2つまで登録できるようにした。

・ユーザーは国内向けのため、一目でエラー内容がわかるようにエラー文を日本語化した。

・投稿詳細画面では支出をグラフ化し、一目で内訳がわかるようにした。

・PCだけでなくスマートホンから利用する場合も想定し、レスポンシブ対応している。

・不具合を未然に防ぐために単体/結合テストコードを実装している。

・貯金のモチベーションを上げるために、貯金額に応じてマイページのお金の画像の表示のされ方が変わるようにした。

## 洗い出した要件
https://docs.google.com/spreadsheets/d/1RHoc-swkgrImLceivdY4ngvRlb524aPtwhxyJV6TQYQ/edit#gid=982722306

## 実装した機能についての画像やGIFおよびその説明
・最低限必要な情報の登録で利用できるようにユーザー管理機能を実装
[![Image from Gyazo](https://i.gyazo.com/27852e6af27b5bd675bf65385d1f0574.png)](https://gyazo.com/27852e6af27b5bd675bf65385d1f0574)
・トップ画面でユーザーの貯金額の合計が表示される
[![Image from Gyazo](https://i.gyazo.com/3cc733caa966b2f431e4d9582d473596.jpg)](https://gyazo.com/3cc733caa966b2f431e4d9582d473596)
・トップ画面で今まで投稿した管理簿が一覧で見れる
[![Image from Gyazo](https://i.gyazo.com/f0f7c3a3ca9f51c3b6e7d9b786109286.png)](https://gyazo.com/f0f7c3a3ca9f51c3b6e7d9b786109286)
・投稿画面では右下に収入と支出の差額が一目でわかるように計算機能をJava Scriptで実装
[![Image from Gyazo](https://i.gyazo.com/39dca6e2c6e563843d0e2b280e8aed27.png)](https://gyazo.com/39dca6e2c6e563843d0e2b280e8aed27)
・投稿詳細画面では投稿した内容の確認と編集と削除ができる
[![Image from Gyazo](https://i.gyazo.com/fa8c56f61640b42426b2b2a1d3f4279f.png)](https://gyazo.com/fa8c56f61640b42426b2b2a1d3f4279f)
・ユーザー詳細画面では投稿したメモや目標の確認と編集と削除ができる
[![Image from Gyazo](https://i.gyazo.com/aa2b8b37912c097fd9a0723fd1c2406a.png)](https://gyazo.com/aa2b8b37912c097fd9a0723fd1c2406a)
・目標とメモを投稿できる
[![Image from Gyazo](https://i.gyazo.com/96295e6b135dc1597b4dc730eeaa9056.png)](https://gyazo.com/96295e6b135dc1597b4dc730eeaa9056)
・月毎の支出のカテゴリをグラフで確認できる
[![Image from Gyazo](https://i.gyazo.com/b3e28fe51da367e197d64ec14422f349.png)](https://gyazo.com/b3e28fe51da367e197d64ec14422f349)
・スマートホンでも表示が崩れないようにレスポンシブ対応
[![Image from Gyazo](https://i.gyazo.com/464b5c0fc06f6167218430569dd4e68e.png)](https://gyazo.com/464b5c0fc06f6167218430569dd4e68e)

## 実装予定の機能
・投稿機能の結合テストコードを実装予定

## データベース設計
※縦に長いため、4分割にて掲載 
[![Image from Gyazo](https://i.gyazo.com/084866d7aa02862567902be71eae52a5.png)](https://gyazo.com/084866d7aa02862567902be71eae52a5)
[![Image from Gyazo](https://i.gyazo.com/8194b9d8273bb1526baceecd49b3d596.png)](https://gyazo.com/8194b9d8273bb1526baceecd49b3d596)
[![Image from Gyazo](https://i.gyazo.com/dc847d64b06beb586874aaedcafd69f2.png)](https://gyazo.com/dc847d64b06beb586874aaedcafd69f2)
[![Image from Gyazo](https://i.gyazo.com/70f0735976a4dc09695f77cb7f53b9fb.png)](https://gyazo.com/70f0735976a4dc09695f77cb7f53b9fb)

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
| year_id              | integer    | null: false                    |
| month_id             | integer    | null: false                    |
| income_account_name  | string     | null: false                    |
| income_account2_name | string     |                                |
| payment_account1_name| string     | null: false                    |
| payment_account2_name| string     |                                |
| payment_account3_name| string     |                                |
| income_money         | integer    | null: false                    |
| income2_money        | integer    |                                |
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
| payment12_money      | integer    |                                |
| payment13_money      | integer    |                                |
| payment14_money      | integer    |                                |
| payment15_money      | integer    |                                |
| payment16_money      | integer    |                                |
| item_name1_id        | integer    | null: false                    |
| item_name2_id        | integer    |                                |
| item_name3_id        | integer    |                                |
| item_name4_id        | integer    |                                |
| item_name5_id        | integer    |                                |
| item_name6_id        | integer    |                                |
| item_name7_id        | integer    |                                |
| item_name8_id        | integer    |                                |
| item_name9_id        | integer    |                                |
| item_name10_id       | integer    |                                |
| item_name11_id       | integer    |                                |
| item_name12_id       | integer    |                                |
| item_name13_id       | integer    |                                |
| item_name1_self      | integer    |                                |
| item_name2_self      | integer    |                                |
| item_name3_self      | integer    |                                |
| user                 | references | null: false, foreign_key: true |

### Association
- belongs_to :user

## memoテーブル

| Column               | Type       | Options                        |
| -------------------- | ---------- | ------------------------------ |
| target               | string     |                                |
| text                 | text       |                                |
| user                 | references | null: false, foreign_key: true |

### Association
- has_many :moneys

## 画面遷移図
[![Image from Gyazo](https://i.gyazo.com/fa62a51161a15fe147c70de189b65659.png)](https://gyazo.com/fa62a51161a15fe147c70de189b65659)

## 開発環境
Ruby,Ruby on Rails,Java Script,Visual Studio Code,MySQL,Github

## ローカルでの動作方法
以下のコマンドを順に実行。

% git clone https://github.com/harukakak/rakubo

% cd rakubo

% bundle install

% yarn install