class SessionsController < ApplicationController
  def new
    render layout: 'admin_stuffs'
  end

  def create
    user = User.find_by(email: params[:email].downcase)
    if login(params[:email].downcase, params[:password], params[:remember])
      redirect_to root_path
    else
      render json: { error: "Couldn't log you in!" }, status: 500
    end
  end

  def destroy
    logout
    redirect_to root_url  
  end
end
