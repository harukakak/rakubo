require 'rails_helper'

RSpec.describe '管理簿投稿', type: :system do
  before do
    @user = FactoryBot.create(:user)
    @money = FactoryBot.create(:money)
  end

  def basic_pass(path)
    username = ENV["BASIC_AUTH_USER"]
    password = ENV["BASIC_AUTH_PASSWORD"]
    visit "http://#{username}:#{password}@#{Capybara.current_session.server.host}:#{Capybara.current_session.server.port}#{path}"
  end

  it 'ログインしたユーザーは投稿できる' do
    # トップページに移動する
    basic_pass root_path
    visit root_path
    # ログインする
    visit new_user_session_path
    fill_in 'email', with: @user.email
    fill_in 'password', with: @user.password
    find('input[name="commit"]').click
    expect(current_path).to eq(root_path)
    # 投稿ページに遷移する
    visit new_money_path
    # フォームに情報を入力する
    select @money.year_id, from: 'money[year_id]', match: :first
    find("#item-month").find("option[value='2']").select_option
    fill_in 'money[income_account_name]', with: @money.income_account_name
    fill_in 'money[payment_account1_name]', with: @money.payment_account1_name
    fill_in 'money[income_money]', with: @money.income_money
    fill_in 'money[payment1_money]', with: @money.payment1_money
    fill_in 'money[income2_money]', with: @money.income2_money
    # 投稿すると、Moneyモデルのカウントが1上がることを確認する
    expect{
      find('input[name="commit"]').click
    }.to change { Money.count }.by(1)
    # トップページにリダイレクトされることを確認する
    expect(current_path).to eq(root_path)
    # トップページ上に先ほどの投稿内容が含まれていることを確認する
    expect(page).to have_content (@money.payment1_money).to_s(:delimited)
    expect(page).to have_content (Year.find(@money.year_id).name)
    expect(page).to have_content (Month.find(@money.month_id).name)
    expect(page).to have_content (@money.income_money + @money.income2_money).to_s(:delimited)
  end
end
