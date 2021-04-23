class Api::V1::AuthenticationController < ApplicationController
  skip_before_action :authorize_request, only: :authenticate

  def authenticate
    auth_token = AuthenticateUser.new(auth_params[:email], auth_params[:password]).call
    hash_authen = {
      status: true,
      data: {
          token: auth_token,
          name: "cuongdv"
      }
    }
    json_response(hash_authen)
  end

  private

  def auth_params
    params.permit(:email, :password)
  end
end
