class TaskController < ApplicationController
	def index
		@tasks = Task.all
	end
	def new
		@task = Task.new
	end

	def create
		@task = Task.create(tasks_param)
		    @task = @list.@task.create(comment_params)
		@task.save
		
	end



	private
	def tasks_param
		params.require(:tasks).permit(:name)
	end

end
