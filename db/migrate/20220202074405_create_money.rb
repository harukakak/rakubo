class CreateMoney < ActiveRecord::Migration[6.0]
  def change
    create_table :money do |t|
      t.string     :month,                   null: false
      t.string     :income_account_name,     null: false
      t.string     :income_account2_name
      t.string     :payment_account1_name,   null: false
      t.string     :payment_account2_name
      t.string     :payment_account3_name
      t.integer    :income_money,            null: false
      t.integer    :income2_money
      t.integer    :payment1_money,          null: false
      t.integer    :payment2_money
      t.integer    :payment3_money
      t.integer    :payment4_money
      t.integer    :payment5_money
      t.integer    :payment6_money
      t.integer    :payment7_money
      t.integer    :payment8_money
      t.integer    :payment9_money
      t.integer    :payment10_money
      t.integer    :payment11_money
      t.integer    :item_name1_id,           null: false
      t.integer    :item_name2_id
      t.integer    :item_name3_id
      t.integer    :item_name4_id
      t.integer    :item_name5_id
      t.integer    :item_name6_id
      t.integer    :item_name7_id
      t.integer    :item_name8_id
      t.string     :item_name1_self
      t.string     :item_name2_self
      t.string     :item_name3_self
      t.references :user,                    null: false, foreign_key: true
      t.timestamps
    end
  end
end
