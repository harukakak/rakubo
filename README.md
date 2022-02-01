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