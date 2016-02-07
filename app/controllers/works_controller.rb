class WorksController < ApplicationController
	#Just for testing, on the upload thing there will be a place where you choose what type of work you want to upload.
	#Copying directly from fanfic_controller with a few minor alterations

	before_action :require_user, only: [:new, :edit] #oh so the things in the brackets must be the .html.erb names
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
		@chapter = Chapter.new
		@chapter.chapter_number = 1
		@work.chapter_id = @chapter
		if @work.save
			redirect_to '/home'
		else
			render 'new'
		@chapter.work_id = @work.id
		end
	end
	def show
		@work = Work.find(params[:id])

	end
	def edit
		@work = Work.find(params[:id])
	end
private
	def work_params
		params.require(:work).permit(:title, :description, :fandom_id, :content)
	end
end