class SessionsController < ApplicationController
  def new
    @pages = Page.all
    @title = "Sign in"
  end

  def create
    @pages = Page.all
    user = User.authenticate(params[:session][:email],
    params[:session][:password])
    if user.nil?
    flash.now[:error] = "Invalid email/password combination."
    @title = "Sign in"
    render 'new'
    else
    sign_in user
    redirect_back_or user

    end
  end

  def destroy
    @pages = Page.all
    sign_out
    redirect_to root_path
  end

end
