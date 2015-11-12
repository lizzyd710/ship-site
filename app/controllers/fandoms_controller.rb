class FandomsController < ApplicationController
	def index
		@fandoms = Fandom.all
	end
	def new
		@fandom = Fandom.new
	end
	def create
		@fandom = Fandom.new(fandom_params)
		if @fandom.save
			redirect_to '/fandoms'
		else
			render 'new'
		end
	end
	def show
		@fandom = Fandom.find(params[:id])
		@fanfics = Work.all
	end
private 
	def fandom_params
		params.require(:fandom).permit(:name, :category)		
	end
end