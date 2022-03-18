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
  context '投稿ができるとき'do
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
  context '投稿ができないとき'do
    it 'ログインしていないと新規投稿ページに遷移できない' do
      # トップページに遷移する
      basic_pass root_path
      visit root_path
      # 新規投稿ページへのボタンがないことを確認する
      expect(page).to have_no_content('保存する')
    end
  end
end

RSpec.describe '管理簿編集', type: :system do
  before do
    @user = FactoryBot.create(:user)
    @money = FactoryBot.create(:money)
  end

  def basic_pass(path)
    username = ENV["BASIC_AUTH_USER"]
    password = ENV["BASIC_AUTH_PASSWORD"]
    visit "http://#{username}:#{password}@#{Capybara.current_session.server.host}:#{Capybara.current_session.server.port}#{path}"
  end
  context '編集ができるとき'do
    it 'ログインしたユーザーは投稿できる' do
      # 投稿したユーザーでログインする
      sign_in(@money.user)
      # 投稿記事をクリックして詳細を見る
      # 「編集」へのリンクがあることを確認する
      expect(
        all('.more')[1].hover
      ).to have_link '投稿の編集', href: edit_money_path(@money)
      # 編集ページへ遷移する
      visit edit_money_path(@money)
      # すでに投稿済みの内容がフォームに入っていることを確認する
      expect(
        find('#money_text').value
      ).to eq(@money.text)
      # 投稿内容を編集する
      fill_in 'money_text', with: "#{@money.text}+編集したテキスト"
      # 編集してもモデルのカウントは変わらないことを確認する
      expect{
        find('input[name="commit"]').click
      }.to change { Money.count }.by(0)
      # 詳細画面に遷移したことを確認する
      expect(current_path).to eq(money_path(@money))
      # 先ほど変更した内容のツイートが存在することを確認する
      expect(page).to have_content("#{@money.text}+編集したテキスト")
    end
  end
end
