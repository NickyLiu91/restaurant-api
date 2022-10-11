class ApplicationController < ActionController::API
  before_action :authorized

   def encode_token(payload)
      JWT.encode(payload, 'secret_word')
   end
   
   def auth_header
      request.headers['Authorization']
   end

   def decoded_token
      if auth_header
         token = auth_header.split(' ')[1]
         begin
            JWT.decode(token, 'secret_word', true, algorithm: 'HS256')
         rescue JWT::DecodeError
            nil
         end
      end
   end

  def current_account

      if decoded_token
         account_id = decoded_token[0]['account_id']
         @account = Account.find_by(id: account_id)
      end
   end

   def logged_in?
      !!current_account
   end

   def authorized
      render json: { message: 'Please log in' }, status: :unauthorized unless logged_in?
   end

end
