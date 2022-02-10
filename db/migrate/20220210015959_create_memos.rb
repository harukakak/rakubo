class CreateMemos < ActiveRecord::Migration[6.0]
  def change
    create_table :memos do |t|
      t.string     :target
      t.text       :text,      null: false
      t.references :user,      null: false, foreign_key: true
      t.timestamps
    end
  end
end
