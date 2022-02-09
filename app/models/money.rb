class Money < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :category
  belongs_to :category1
  belongs_to :category2
  belongs_to :category3
  belongs_to :category4
  belongs_to :category5
  belongs_to :category6
  belongs_to :category7
  belongs_to :user

  validates :month, :income_account_name, :payment_account1_name, :income_money, :payment1_money, :item_name1_id, presence: true
end
