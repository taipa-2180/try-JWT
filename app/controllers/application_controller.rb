class ApplicationController < ActionController::API
  include ExceptionHandler
  include SerializerHelper

  before_action :authorize_request
  attr_reader :current_user

  private

  def authorize_request
    @current_user = (AuthorizeApiRequest.new(request.headers).call)[:user] #####
  end
end
