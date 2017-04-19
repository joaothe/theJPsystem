class InclusionsController < ApplicationController
	def index
		@inclusions = Inclusion.all
	end

	def show
		@inclusion = Inclusion.find(params[:id])
	end

	def new
		@inclusion = Inclusion.new
	end

	def create
		@inclusion = Inclusion.new(inclusion_params)

		if @inclusion.save
  		redirect_to @inclusion
		else
			render 'new'
		end
	end

	private
		def inclusion_params
			params.require(:inclusion).permit(:title, :text)
		end

end
