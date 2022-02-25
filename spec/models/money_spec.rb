require 'rails_helper'

RSpec.describe Money, type: :model do
  before do
    @money = FactoryBot.build(:money)
  end

  describe '管理簿の保存' do
    context '管理簿が投稿できる場合' do
      it '年月、収入1の口座名と金額、支出1の口座名と金額が存在すれば登録できる' do
        expect(@money).to be_valid
      end
    end
    context '管理簿が投稿できない場合' do
      it '年に「---」が選択されている場合は登録できない' do
        @money.year_id = 1
        @money.valid?
        expect(@money.errors.full_messages).to include ("投稿月を選択してください")
      end
      it '月に「---」が選択されている場合は登録できない' do
        @money.month_id = 1
        @money.valid?
        expect(@money.errors.full_messages).to include("月を選択してください")
      end
      it '収入1の口座名が空では登録できない' do
        @money.income_account_name = ''
        @money.valid?
        expect(@money.errors.full_messages).to include("収入1の口座名を入力してください")
      end
      it '収入1の金額が空では登録できない' do
        @money.income_money = ''
        @money.valid?
        expect(@money.errors.full_messages).to include("収入1の金額は数値で入力してください","収入1の金額は不正な値です")
      end
      it '支出1の口座名が空では登録できない' do
        @money.payment_account1_name = ''
        @money.valid?
        expect(@money.errors.full_messages).to include("支出1の口座名を入力してください")
      end
      it '支出1の金額が空では登録できない' do
        @money.payment1_money = ''
        @money.valid?
        expect(@money.errors.full_messages).to include("貯金額は数値で入力してください","貯金額は不正な値です")
      end
      it '収入1の金額が全角では登録できない' do
        @money.income_money = '１８０'
        @money.valid?
        expect(@money.errors.full_messages).to include("収入1の金額は数値で入力してください")
      end
      it '支出1の金額(1)が全角では登録できない' do
        @money.payment1_money = '１８０'
        @money.valid?
        expect(@money.errors.full_messages).to include("貯金額は数値で入力してください")
      end
      it 'userが紐付いていなければ出品できない' do
        @money.user = nil
        @money.valid?
        expect(@money.errors.full_messages).to include('Userを入力してください')
      end
      it '収入2の金額が全角では登録できない' do
        @money.income2_money = '１８０'
        @money.valid?
        expect(@money.errors.full_messages).to include("収入2の金額は数値で入力してください")
      end
      it '支出1の金額(2)が全角では登録できない' do
        @money.payment2_money = '１８０'
        @money.valid?
        expect(@money.errors.full_messages).to include("支出1の金額(2)は数値で入力してください")
      end
      it '支出1の金額(3)が全角では登録できない' do
        @money.payment3_money = '１８０'
        @money.valid?
        expect(@money.errors.full_messages).to include("支出1の金額(3)は数値で入力してください")
      end
      it '支出2の金額(1)が全角では登録できない' do
        @money.payment4_money = '１８０'
        @money.valid?
        expect(@money.errors.full_messages).to include("支出2の金額(1)は数値で入力してください")
      end
      it '支出2の金額(2)が全角では登録できない' do
        @money.payment5_money = '１８０'
        @money.valid?
        expect(@money.errors.full_messages).to include("支出2の金額(2)は数値で入力してください")
      end
      it '支出2の金額(3)が全角では登録できない' do
        @money.payment6_money = '１８０'
        @money.valid?
        expect(@money.errors.full_messages).to include("支出2の金額(3)は数値で入力してください")
      end
      it '支出2の金額(4)が全角では登録できない' do
        @money.payment7_money = '１８０'
        @money.valid?
        expect(@money.errors.full_messages).to include("支出2の金額(4)は数値で入力してください")
      end
      it '支出2の金額(5)が全角では登録できない' do
        @money.payment8_money = '１８０'
        @money.valid?
        expect(@money.errors.full_messages).to include("支出2の金額(5)は数値で入力してください")
      end
      it '支出2の金額(6)が全角では登録できない' do
        @money.payment9_money = '１８０'
        @money.valid?
        expect(@money.errors.full_messages).to include("支出2の金額(6)は数値で入力してください")
      end
      it '支出3の金額(1)が全角では登録できない' do
        @money.payment11_money = '１８０'
        @money.valid?
        expect(@money.errors.full_messages).to include("支出3の金額(1)は数値で入力してください")
      end
      it '支出3の金額(2)が全角では登録できない' do
        @money.payment12_money = '１８０'
        @money.valid?
        expect(@money.errors.full_messages).to include("支出3の金額(2)は数値で入力してください")
      end
      it '支出3の金額(3)が全角では登録できない' do
        @money.payment13_money = '１８０'
        @money.valid?
        expect(@money.errors.full_messages).to include("支出3の金額(3)は数値で入力してください")
      end
      it '支出3の金額(4)が全角では登録できない' do
        @money.payment14_money = '１８０'
        @money.valid?
        expect(@money.errors.full_messages).to include("支出3の金額(4)は数値で入力してください")
      end
      it '支出3の金額(5)が全角では登録できない' do
        @money.payment15_money = '１８０'
        @money.valid?
        expect(@money.errors.full_messages).to include("支出3の金額(5)は数値で入力してください")
      end
      it '支出3の金額(6)が全角では登録できない' do
        @money.payment16_money = '１８０'
        @money.valid?
        expect(@money.errors.full_messages).to include("支出3の金額(6)は数値で入力してください")
      end
      it '支出2の金額(7)が全角では登録できない' do
        @money.payment10_money = '１８０'
        @money.valid?
        expect(@money.errors.full_messages).to include("支出2の金額(7)は数値で入力してください")
      end
    end
  end
end

