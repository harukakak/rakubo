require 'rails_helper'

RSpec.describe 'メモ投稿', type: :system do
  before do
    @user = FactoryBot.create(:user)
    @memo = FactoryBot.create(:memo)
  end

  def basic_pass(path)
    username = ENV["BASIC_AUTH_USER"]
    password = ENV["BASIC_AUTH_PASSWORD"]
    visit "http://#{username}:#{password}@#{Capybara.current_session.server.host}:#{Capybara.current_session.server.port}#{path}"
  end

  it 'ログインしたユーザーはユーザー詳細ページでメモ投稿できる' do
    # トップページに移動する
    basic_pass root_path
    visit root_path
    # ログインする
    visit new_user_session_path
    fill_in 'email', with: @user.email
    fill_in 'password', with: @user.password
    find('input[name="commit"]').click
    expect(current_path).to eq(root_path)
    # ユーザー詳細ページに遷移する
    visit memos_path
    # メモと目標の投稿ページへ遷移する
    visit new_memo_path
    # フォームに情報を入力する
    fill_in 'memo[target]', with: @memo.target
    fill_in 'memo[text]', with: @memo.text
    # 投稿すると、Memoモデルのカウントが1上がることを確認する
    expect{
      find('input[name="commit"]').click
    }.to change { Memo.count }.by(1)
    # 詳細ページにリダイレクトされることを確認する
    expect(current_path).to eq(memos_path)
    # 詳細ページ上に先ほどの投稿内容が含まれていることを確認する
    expect(page).to have_content(@memo.target)
    expect(page).to have_content(@memo.text)
  end
end