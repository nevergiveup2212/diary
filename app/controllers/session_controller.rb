class SessionController < ApplicationController
  def new
  end

  def create
    user = User.find_by_name(params[:session][:name].downcase)
    if user && user.authenticate(params[:session][:password])
      #TODO save user info to sesstion
      flash[:success] = "Login success"
      login_in user
      redirect_to user
    else
      flash[:danger] = "Invalid email/password combination"
      render :new
    end
  end

  def destroy
  end
end
