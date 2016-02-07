class ChaptersController < ApplicationController
	before_action :require_user, only: [:new, :edit]

	def new
		@chapter = Chapter.new		
	end
	def create
		@chapter = Chapter.new(chapter_params)		
	end
	def show
		@chapter = Chapter.find(params[:id])
		@work = @chapter.work		
	end

private
	def chapter_params
		params.require(:chapter).permit(:title, :chapter_number, :work_id, :content)
	end
end
