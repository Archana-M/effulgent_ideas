class LikesController < ApplicationController
	likecount  = 0
  def create
		@like = Like.create(user: current_user, idea: Idea.find(params[:idea_id]))

		@idea = Idea.find(params[:idea_id])
		if @idea.likecount
			@idea.likecount=@idea.likecount+1
			@idea.save
		else 
			@idea.likecount = 1
			@idea.save
		end

		redirect_to "/ideas"
	end

	def destroy
		like = Like.find_by(user: current_user, idea: Idea.find(params[:id]))
	    like.destroy 
	    redirect_to  "/ideas"
	end
end
