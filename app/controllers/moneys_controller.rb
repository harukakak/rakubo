class MoneysController < ApplicationController
  before_action :authenticate_user!, only: [:new, :create, :edit, :update, :destroy, :show, :update]
  before_action :set, only: [:show, :edit, :update, :destroy]
  before_action :flg_init, only: [:index]

  $lastmonthflg = 0
  $userid = ''

  def set
    @money = Money.find(params[:id])
  end

  def index
    @moneys = Money.includes(:user).order('created_at DESC')
  end

  def new
    @money = Money.new
    if $lastmonthflg == 1
      @lastmoney = lastmonthdatasearch
      if @lastmoney.present?
        @money = Money.new(
          year: @lastmoney.year,
          month: @lastmoney.month,
          income_account_name: @lastmoney.income_account_name,
          payment_account1_name: @lastmoney.payment_account1_name,
          income_money: @lastmoney.income_money,
          payment1_money: @lastmoney.payment1_money,
          item_name1_id: @lastmoney.item_name1_id,
          item_name2_id: @lastmoney.item_name2_id,
          item_name3_id: @lastmoney.item_name3_id,
          item_name4_id: @lastmoney.item_name4_id,
          item_name5_id: @lastmoney.item_name5_id,
          item_name6_id: @lastmoney.item_name6_id,
          item_name7_id: @lastmoney.item_name7_id,
          item_name8_id: @lastmoney.item_name8_id,
          item_name9_id: @lastmoney.item_name9_id,
          item_name10_id: @lastmoney.item_name10_id,
          item_name11_id: @lastmoney.item_name11_id,
          item_name12_id: @lastmoney.item_name12_id,
          item_name13_id: @lastmoney.item_name13_id,
          payment_account2_name: @lastmoney.payment_account2_name,
          payment_account3_name: @lastmoney.payment_account3_name,
          payment2_money: @lastmoney.payment2_money,
          payment3_money: @lastmoney.payment3_money,
          payment4_money: @lastmoney.payment4_money,
          payment5_money: @lastmoney.payment5_money,
          payment6_money: @lastmoney.payment6_money,
          payment7_money: @lastmoney.payment7_money,
          payment8_money: @lastmoney.payment8_money,
          payment9_money: @lastmoney.payment9_money,
          payment10_money: @lastmoney.payment10_money,
          payment11_money: @lastmoney.payment11_money,
          payment12_money: @lastmoney.payment12_money,
          payment13_money: @lastmoney.payment13_money,
          payment14_money: @lastmoney.payment14_money,
          payment15_money: @lastmoney.payment15_money,
          payment16_money: @lastmoney.payment16_money,
          item_name1_self: @lastmoney.item_name1_self,
          item_name2_self: @lastmoney.item_name2_self,
          item_name3_self: @lastmoney.item_name3_self,
          income_account2_name: @lastmoney.income_account2_name,
          income2_money: @lastmoney.income2_money,
          user_id: @lastmoney.user_id
        )
      end
    end
  end

  def flg_init
    $lastmonthflg = 0
    $userid = ''
  end

  def lastmonthdatasearch
    @moneys = Money.where(user_id: $userid).order('created_at DESC').limit(1)
    @moneys.first
  end

  def lastmonthsearch
    $lastmonthflg = 1
    $userid = params[:id]
    redirect_to new_money_path
  end

  def create
    @money = Money.new(money_params)
    if @money.save
      redirect_to root_path
    else
      render :new
    end
  end

  def show
    @res = selectsql
    p @res
  end

  def edit
  end

  def update
    if @money.update(money_params)
      redirect_to money_path
    else
      render :edit
    end
  end

  def destroy
    @money = Money.find(params[:id])
    if current_user.id == @money.user_id
      @money.destroy
      redirect_to root_path
    else
      redirect_to action: :index
    end
  end

  def selectsql
    @res = ActiveRecord::Base.connection.select_all('select id,year_id,month_id,item_id,sum(money) as Kei from (
      select id,year_id,month_id,item_name1_id as item_id,payment1_money as money from money
      union all select id,year_id,month_id,item_name2_id,payment2_money from money
      union all select id,year_id,month_id,item_name3_id,payment3_money from money
      union all select id,year_id,month_id,item_name4_id,payment4_money from money
      union all select id,year_id,month_id,item_name5_id,payment6_money from money
      union all select id,year_id,month_id,item_name6_id,payment7_money from money
      union all select id,year_id,month_id,item_name7_id,payment9_money from money
      union all select id,year_id,month_id,item_name8_id,payment10_money from money
      union all select id,year_id,month_id,item_name9_id,payment12_money from money
      union all select id,year_id,month_id,item_name10_id,payment13_money from money
      union all select id,year_id,month_id,item_name11_id,payment14_money from money
      union all select id,year_id,month_id,item_name12_id,payment15_money from money
      union all select id,year_id,month_id,item_name13_id,payment16_money from money
      union all select id,year_id,month_id,item_name1_self,payment8_money from money
      union all select id,year_id,month_id,item_name2_self,payment5_money from money
      union all select id,year_id,month_id,item_name3_self,payment11_money from money) as table1 where money is not null and id = ' + params[:id] + ' group by year_id,month_id,item_id order by year_id,month_id,item_id,money;')
    @res
  end

  private

  def money_params
    params.require(:money).permit(:year_id, :month_id, :income_account_name, :payment_account1_name,
                                  :income_money, :payment1_money, :item_name1_id, :item_name2_id,
                                  :item_name3_id, :item_name4_id, :item_name5_id, :item_name6_id, :item_name7_id,
                                  :item_name8_id, :item_name9_id, :item_name10_id, :item_name11_id, :item_name12_id, :item_name13_id,
                                  :payment_account2_name, :payment_account3_name, :payment2_money,
                                  :payment3_money, :payment4_money, :payment5_money, :payment6_money, :payment7_money,
                                  :payment8_money, :payment9_money, :payment10_money, :payment11_money, :payment12_money, :payment13_money,
                                  :payment14_money, :payment15_money, :payment16_money, :item_name1_self,
                                  :item_name2_self, :item_name3_self, :income_account2_name, :income2_money).merge(user_id: current_user.id)
  end
end
