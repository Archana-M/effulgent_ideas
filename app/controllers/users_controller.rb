class UsersController < ApplicationController
  def index
  end

  def create
    @user = User.create(name: user_params[:name], alias: user_params[:alias], email: user_params[:email], password: user_params[:password], password_confirmation: user_params[:password_confirmation])


    @user.valid?
    if @user.errors.any?
      flash[:regerrors] = @user.errors.full_messages
      redirect_to '/sessions/new'
      else
        session[:user_id] = @user.id
        redirect_to '/sessions/new'
      end
  
  end

  def show
    @user = User.find(params[:id])
    @likes = current_user.ideas_liked
    @currentuser = User.find(session[:user_id])

  end

  def edit

  end

  def destroy

  end

  private
    def user_params
      params.require(:user).permit(:name, :alias, :email, :password, :password_confirmation)
    end
end
