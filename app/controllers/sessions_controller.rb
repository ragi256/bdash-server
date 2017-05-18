class SessionsController < ApplicationController
  def create
    user = User.find_or_create_by_auth_hash!(request.env['omniauth.auth'])
    session[:user_id] = user.id
    redirect_to :root
  end
end
