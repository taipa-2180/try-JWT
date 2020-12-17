module SerializerHelper
  def json_response message, code
    render json: {message: message[:message], auth_token:  message[:auth_token], status: code}, status: code
  end
end