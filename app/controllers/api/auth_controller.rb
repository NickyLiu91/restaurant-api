class Api::AuthController < ApplicationController
  skip_before_action :authorized, only: %i[create]

  def create
     @account = Account.find_by(name: account_login_params[:name])
     if @account && @account.authenticate(account_login_params[:password])
        token = encode_token({ account_id: @account.id })
        render json: { account: AccountSerializer.new(@account), jwt: token }, status: :accepted
     else
        render json: { message: 'Invalid name or password' }, status: :unauthorized
     end
  end

  private

  def account_login_params
     params.require(:account).permit(:name, :email, :phone, :rank, :password)
  end
end
