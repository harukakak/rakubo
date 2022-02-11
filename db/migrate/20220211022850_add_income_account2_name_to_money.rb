class AddIncomeAccount2NameToMoney < ActiveRecord::Migration[6.0]
  def change
    add_column :money, :income_account2_name, :string
  end
end
