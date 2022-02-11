class MoneysController < ApplicationController
  before_action :authenticate_user!, only: [:new, :create, :edit, :update, :destroy, :show, :update]
  before_action :set, only: [:show, :edit, :update, :destroy]

  def set
    @money = Money.find(params[:id])
  end

  def index
    @moneys = Money.includes(:user).order("created_at DESC")
  end

  def new
    @money = Money.new
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
    if current_user.id == @money.user_id
      @money.destroy
      redirect_to root_path
    else
      redirect_to action: :index
    end
  end

  private

  def money_params
    params.require(:money).permit(:month, :income_account_name, :payment_account1_name,
        :income_money, :payment1_money, :item_name1_id, :item_name2_id,
        :item_name3_id, :item_name4_id, :item_name5_id,:item_name6_id, :item_name7_id,
        :item_name8_id, :payment_account2_name, :payment_account3_name, :payment2_money,
        :payment3_money, :payment4_money, :payment5_money, :payment6_money, :payment7_money,
        :payment8_money, :payment9_money, :payment10_money, :payment11_money, :item_name1_self,
        :item_name2_self, :item_name3_self, :income_account2_name, :income2_money ).merge(user_id: current_user.id)
  end
end
