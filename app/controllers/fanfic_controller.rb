class FanficController < ApplicationController
	#only doing the before_action for the tutorial so I can learn it for other pages. Everybody
	#can view the fics.
	before_action :require_user, only: [:new] #oh so the things in the brackets must be the .html.erb names
	#wait no, they're methods

	def index
		@fanfics = Fanfic.all
	end
	def new
		@fanfic = Fanfic.new
	end
	def create
		@fanfic = Fanfic.new(fanfic_params)
		@fanfic.user_id = current_user.id
		if @fanfic.save
			redirect_to '/fanfics'
		else
			render 'new'
		end
	end
	def show
		@fanfic = Fanfic.find(params[:id])
		@fandom = @fanfic.fandoms
		@author = @fanfic.user_id
	end
private
	def fanfic_params
		params.require(:fanfic).permit(:title, :description, :author, :fandoms)
	end
end