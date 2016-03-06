class DirectorsController < ApplicationController

	def index
		@directors = Director.all
	end	

	def new
		@director = Director.new
	end

	def create
		@director = Director.new(directors_params)
		if @director.save
			flash[:success] = 'Reżyser został zapisany.'
			redirect_to directors_path
		else
			flash[:danger] = 'Coś poszło nie tak, spróbuj ponownie.'
			render :new
		end
	end

	def edit
		@director = Director.find(params[:id])
	end

	def update
		@director = Director.find(params[:id])
		if @director.update(directors_params)
			flash[:success] = 'Reżyser został zapisany.'
			redirect_to @director
		else
			flash[:danger] = 'Coś poszło nie tak, spróbuj ponownie.'
			render :edit
		end	
	end

	def delete
		@director = Director.find(params[:id])
		@director.destroy
		flash[:success] = 'Film został usunięty'
		redirect_to directors_path
	end

	def show
		@director = Director.find(params[:id])
	end

	private
	def directors_params
		params.require(:director).permit(:name)
	end
end
