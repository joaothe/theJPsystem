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

	def edit
		@inclusion = Inclusion.find(params[:id])
	end

	def create
		@inclusion = Inclusion.new(inclusion_params)

		if @inclusion.save
  		redirect_to @inclusion
		else
			render 'new'
		end
	end

	def update
  	@inclusion = Inclusion.find(params[:id])

  	if @inclusion.update(inclusion_params)
    	redirect_to @inclusion
  	else
    	render 'edit'
  	end
	end


	def destroy
  	@inclusion = Inclusion.find(params[:id])
  	@inclusion.destroy

  	redirect_to inclusions_path
	end

	private
		def inclusion_params
			params.require(:inclusion).permit(:title, :text)
		end

end
