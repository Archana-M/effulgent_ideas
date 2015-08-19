class SessionsController < ApplicationController
  def create
  	user = User.find_by(email: user_params[:email])

  	if user && user.authenticate(user_params[:password])
  		session[:user_id] = user.id 
  		redirect_to '/ideas'
  	else
  		flash[:errors] = ["user name and password is required"]
  		redirect_to '/sessions/new'
  	end
  end

  def destroy
  	session[:user_id] = nil
  	reset_session
	 redirect_to '/sessions/index'
  end

   private
	def user_params
		params.require(:user).permit(:email, :password)
	end
end
