class WorksController < ApplicationController
	#Just for testing, on the upload thing there will be a place where you choose what type of work you want to upload.
	#Copying directly from fanfic_controller with a few minor alterations

	before_action :require_user, only: [:new] #oh so the things in the brackets must be the .html.erb names
	#wait no, they're methods

	def index
		@works = Work.all
	end
	def new
		@work = Work.new
	end
	def create
		@work = Work.new(work_params)
		@work.user_id = current_user.id
		if @work.save
			redirect_to '/home'
		else
			render 'new'
		end
	end
	def show
		@work = Work.find(params[:id])
		@fandom = @work.fandom_id.name
		@author = @work.user_id
	end
private
	def work_params
		params.require(:work).permit(:title, :description, :fandom_id)
	end
end
