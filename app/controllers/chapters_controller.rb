class ChaptersController < ApplicationController
	#Requires a user to be logged in to use the new and edit methods.
	before_action :require_user, only: [:new, :edit]

	def new
		@chapter = Chapter.new		
	end
	def create
		@chapter = Chapter.new(chapter_params)
		@chapter.work_id= params[:work_id] #hopefully this should get the id from the url
	end
	def show
		@chapter = Chapter.find(params[:id]) #wait this would mean that it's like every chapter has a different id no matter what work it belongs to
											 #the ao3 chapters controller has this being @chapter = @work.chapters.find_by_id(params[:id]) under def show
		@work = @chapter.work	
	end

private
	def chapter_params
		params.require(:chapter).permit(:title, :chapter_number, :content) #gives me an error here after the first part of upload process
	end
end
