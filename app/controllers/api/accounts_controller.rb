class Api::AccountsController < ApplicationController
  skip_before_action :authorized, only: [:create]

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

      @token = encode_token(account_id: @account.id)
      render json: { account: AccountSerializer.new(@account), jwt: @token}, status: :created
    else
      render json: { error: 'failed to create user' }, status: :not_acceptable
    end
  end

  def edit
    @account = Account.find_by(id: params[:id])
  end

  def update
    @account = Account.find_by(id: params[:id])
    @account.update(account_params)
    render json: @account
  end

  def destroy
    @account = Account.find_by(id: params[:id])
    @account.destroy
  end

  private

  def account_params
    params.require(:account).permit(:name, :email, :phone, :rank, :password, :restaurant_id)
  end
end
