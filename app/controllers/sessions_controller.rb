class SessionsController < ApplicationController
  def hello
    if session[:name]
      @user = session[:name]
    else
      redirect_to '/new'
    end
  end

  def new

  end

  def create
    session[:name] = params[:name]
    redirect_to '/'
  end

  def destroy
    session.delete :name
  end
end
