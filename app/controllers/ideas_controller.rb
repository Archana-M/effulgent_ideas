class IdeasController < ApplicationController
  def index
    @user = User.find(session[:user_id])

      if params[:sort] == "votes"  
        @idea = Idea.all().order(likecount: :desc) 
      elsif params[:sort] == "old"
        @idea = Idea.all().order(created_at: :asc)
      else
         @idea = Idea.all().order(created_at: :desc)

      end

    @likes = current_user.ideas_liked


  end

  def create
    @idea = Idea.create(content: params[:content], user_id: params[:user_id])

    redirect_to '/ideas'
  end

  def show

    @like = Like.where(user: User.find(session[:user_id]))

    @members = Idea.find(params[:id]).users_liked.uniq

    @idea = Idea.find(params[:id])


    @currentuser = User.find(session[:user_id])
 
  end

  def update
  end

  def destroy
    idea = Idea.find(params[:id])
    idea.destroy if idea.user == current_user
    redirect_to "/ideas"
  end
end
