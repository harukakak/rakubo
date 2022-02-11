class AddIncome2MoneyToMoney < ActiveRecord::Migration[6.0]
  def change
    add_column :money, :income2_money, :integer
  end
end
