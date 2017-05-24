class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :set_current_user

  private

  def set_current_user
    if session[:user_id]
      @current_user = User.find_by(id: session[:user_id])
    end
  end

  def verify_with_access_token
    token = request.headers['X-Bdash-API-Token']
    raise ActionController::InvalidAuthenticityToken if token.blank?

    @current_user = User.find_by(access_token: token)
    raise ActionController::InvalidAuthenticityToken if @current_user.nil?
  end
end
