require 'rails_helper'

RSpec.describe Memo, type: :model do
  before do
    @memo = FactoryBot.build(:memo)
  end

  describe 'メモと目標の保存' do
    context 'メモと目標が投稿できる場合' do
      it 'テキストを投稿できる' do
        expect(@memo).to be_valid
      end
    end
    context 'メモと目標が投稿できない場合' do
      it 'ユーザーが紐付いていなければ投稿できない' do
        @memo.user = nil
        @memo.valid?
        expect(@memo.errors.full_messages).to include('Userを入力してください')
      end
    end
  end
end
