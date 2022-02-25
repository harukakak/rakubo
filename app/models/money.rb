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
  validates :year_id, uniqueness: { scope: [:month_id] }
  validates :income_money, :payment1_money, numericality: { greater_than_or_equal_to: 0, less_than_or_equal_to: 9_999_999 },
                                            format: { with: /\A[0-9]+\z/}

  validates :income2_money,numericality: { greater_than_or_equal_to: 0, less_than_or_equal_to: 9_999_999 },
  format: { with: /\A[0-9]+\z/, message: "が無効です。半角数値で入力してください"}, if: Proc.new { |money| money.income2_money.present? }
  validates :payment2_money,numericality: { greater_than_or_equal_to: 0, less_than_or_equal_to: 9_999_999 },
  format: { with: /\A[0-9]+\z/, message: "が無効です。半角数値で入力してください"}, if: Proc.new { |money| money.payment2_money.present? }
  validates :payment3_money,numericality: { greater_than_or_equal_to: 0, less_than_or_equal_to: 9_999_999 },
  format: { with: /\A[0-9]+\z/, message: "が無効です。半角数値で入力してください"}, if: Proc.new { |money| money.payment3_money.present? }
  validates :payment4_money,numericality: { greater_than_or_equal_to: 0, less_than_or_equal_to: 9_999_999 },
  format: { with: /\A[0-9]+\z/, message: "が無効です。半角数値で入力してください"}, if: Proc.new { |money| money.payment4_money.present? }
  validates :payment5_money,numericality: { greater_than_or_equal_to: 0, less_than_or_equal_to: 9_999_999 },
  format: { with: /\A[0-9]+\z/, message: "が無効です。半角数値で入力してください"}, if: Proc.new { |money| money.payment5_money.present? }
  validates :payment6_money,numericality: { greater_than_or_equal_to: 0, less_than_or_equal_to: 9_999_999 },
  format: { with: /\A[0-9]+\z/, message: "が無効です。半角数値で入力してください"}, if: Proc.new { |money| money.payment6_money.present? }
  validates :payment7_money,numericality: { greater_than_or_equal_to: 0, less_than_or_equal_to: 9_999_999 },
  format: { with: /\A[0-9]+\z/, message: "が無効です。半角数値で入力してください"}, if: Proc.new { |money| money.payment7_money.present? }
  validates :payment8_money,numericality: { greater_than_or_equal_to: 0, less_than_or_equal_to: 9_999_999 },
  format: { with: /\A[0-9]+\z/, message: "が無効です。半角数値で入力してください"}, if: Proc.new { |money| money.payment8_money.present? }
  validates :payment9_money,numericality: { greater_than_or_equal_to: 0, less_than_or_equal_to: 9_999_999 },
  format: { with: /\A[0-9]+\z/, message: "が無効です。半角数値で入力してください"}, if: Proc.new { |money| money.payment9_money.present? }
  validates :payment10_money,numericality: { greater_than_or_equal_to: 0, less_than_or_equal_to: 9_999_999 },
  format: { with: /\A[0-9]+\z/, message: "が無効です。半角数値で入力してください"}, if: Proc.new { |money| money.payment10_money.present? }
  validates :payment11_money,numericality: { greater_than_or_equal_to: 0, less_than_or_equal_to: 9_999_999 },
  format: { with: /\A[0-9]+\z/, message: "が無効です。半角数値で入力してください"}, if: Proc.new { |money| money.payment11_money.present? }
  validates :payment12_money,numericality: { greater_than_or_equal_to: 0, less_than_or_equal_to: 9_999_999 },
  format: { with: /\A[0-9]+\z/, message: "が無効です。半角数値で入力してください"}, if: Proc.new { |money| money.payment12_money.present? }
  validates :payment13_money,numericality: { greater_than_or_equal_to: 0, less_than_or_equal_to: 9_999_999 },
  format: { with: /\A[0-9]+\z/, message: "が無効です。半角数値で入力してください"}, if: Proc.new { |money| money.payment13_money.present? }
  validates :payment14_money,numericality: { greater_than_or_equal_to: 0, less_than_or_equal_to: 9_999_999 },
  format: { with: /\A[0-9]+\z/, message: "が無効です。半角数値で入力してください"}, if: Proc.new { |money| money.payment14_money.present? }
  validates :payment15_money,numericality: { greater_than_or_equal_to: 0, less_than_or_equal_to: 9_999_999 },
  format: { with: /\A[0-9]+\z/, message: "が無効です。半角数値で入力してください"}, if: Proc.new { |money| money.payment15_money.present? }
  validates :payment16_money,numericality: { greater_than_or_equal_to: 0, less_than_or_equal_to: 9_999_999 },
  format: { with: /\A[0-9]+\z/, message: "が無効です。半角数値で入力してください"}, if: Proc.new { |money| money.payment16_money.present? }
end
