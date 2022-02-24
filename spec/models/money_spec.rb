require 'rails_helper'

RSpec.describe Money, type: :model do
  before do
    @money = FactoryBot.build(:money)
  end

  describe '管理簿の保存' do
    context '管理簿が投稿できる場合' do
      it 'テキストを投稿できる' do
        expect(@money).to be_valid
      end
    end
    context '管理簿が投稿できない場合' do
      it '必須項目が空では投稿できない' do
        @money.text = ''
        @money.valid?
        expect(@money.errors.full_messages).to include "Text can't be blank"
      end     
      it 'ユーザーが紐付いていなければ投稿できない' do
        @money.user = nil
        @money.valid?
        expect(@money.errors.full_messages).to include('User must exist')
      end
    end
  end
end
