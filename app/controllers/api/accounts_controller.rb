class Api::AccountsController < ApplicationController

  def index
    @accounts = Account.all
    render json: @accounts
  end

  def show
    @account = Account.find(params[:id])
    render json: @account
  end

  def new
    @account = Account.new
  end

  def create
   @account = Account.create(account_params)

   if @account.valid?
      render json: { account: AccountSerializer.new(@account) }, status: :created
    else
      render json: { error: 'account creation failed' }, status: :not_acceptable
    end
  end

  def edit
    @account = Account.find_by(id: params[:id])
  end

  def update
    @account = Account.find_by(id: params[:id])
    @account.update(account_params)
    render json: @post
  end

  def destroy
    @account = Account.find_by(id: params[:id])
    @account.destroy
  end

  private

  def account_params
    params.require(:account).permit(:name, :email, :phone, :rank, :password)
  end
end
