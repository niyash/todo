class ListsController < ApplicationController
	def index
		@lists = List.all
	end

	def new

		@list = List.new
	end
	def create
		@list = List.create(lists_param)
		if @list.save
			redirect_to lists_path
 		else
			render("new")
		end
	end

	def edit
		@list = List.find(params[:id])
	end
	def destroy
		@list = List.find(params[:id])
		@list.destroy
		redirect_to lists_path
	end



	private
	def lists_param
		params.require(:list).permit(:title)
	end

end
