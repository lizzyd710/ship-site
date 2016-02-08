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
		@work.user_id = current_user.id #Sets the work's author ID to the ID of the user currently logged in
		@chapter = Chapter.new #Automatically creates the first chapter
		@chapter.chapter_number = 1 #says that the chapter that was just created is the first chapter in this work
		@work.chapter_id = @chapter #sets the chapter that was just created as the chapter which is opened when the work is first opened (aka the first chapter)
		if @work.save
			redirect_to newchapter_path(@work.id) #This should take the user to the next page in upload process where you input content. Not sure how to get the id part of the url to be
			#the id of the work that was just created. Have to find out.
		else
			render 'new'
		@chapter.work_id = @work.id #says the chapter that was created belongs to the work that was just created
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
		params.require(:work).permit(:title, :description, :fandom_id)
	end
end