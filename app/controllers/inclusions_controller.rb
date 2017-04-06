class InclusionsController < ApplicationController
	def new
	end
	
	def create
		@inclusion = Inclusion.new(inclusion_params)

		@inclusion.save
  	redirect_to @inclusion
	end

	private 
		def inclusion_params
			params.require(:inclusion).permit(:title, :text)
		end		

end
