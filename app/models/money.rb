class Money < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :category
  belongs_to :category1
  belongs_to :month
  belongs_to :year
  belongs_to :user

  validates :year_id, :month_id, numericality: { other_than: 1, message: 'を選択してください' }
  validates :year_id, :month_id, :income_account_name, :payment_account1_name, :item_name1_id,
            presence: true
  validates :year_id, uniqueness: {scope: [:month_id] }
  validates :income_money, :payment1_money, numericality: { greater_than_or_equal_to: 0, less_than_or_equal_to: 9_999_999 },
            format: { with: /\A[0-9]+\z/, message: "が無効です。半角数値で入力してください"}
  
  # validates :income2_money,numericality: { greater_than_or_equal_to: 0, less_than_or_equal_to: 9_999_999 },
  #           presence: true,
  #           format: { with: /\A[0-9]+\z/, message: "が無効です。半角数値で入力してください"}, if: :income2_money?

            #  :income2_money, :payment2_money, :payment3_money, :payment4_money, :payment5_money,
            #  :payment6_money, :payment7_money, :payment8_money, :payment9_money, :payment10_money, :payment11_money,
            #  :payment12_money, :payment13_money, :payment14_money, :payment15_money, :payment16_money,
end
