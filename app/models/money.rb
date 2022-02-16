class Money < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :category
  belongs_to :category1
  belongs_to :month
  belongs_to :year
  belongs_to :user

  validates :year_id, :month_id, numericality: { other_than: 1, message: "を選択してください" }
  validates :year_id, :month_id, :income_account_name, :payment_account1_name, :income_money, :payment1_money, :item_name1_id, presence: true
end
