class LogsController < ApplicationController
  before_action :authenticate_user! 

  def create
  	@todo = Todo.find(params[:todo_id])
  	@log = Log.new(todo: @todo, user: current_user, completed: true)
  	if @log.save
  		redirect_to todos_path, notice: 'El log de la tarea ha sido ingresado'
  	else
  		redirect_to todos_path, alert: 'El log de la tarea no ha podido ser ingresado'
  	end
	end

	def destroy
	  @todo = Todo.find(params[:todo_id])

		@log = Log.where(todo: @todo, user: current_user)
		@log.last.destroy
		
		redirect_to todos_path, notice: "La tarea ha sido actualizada"

		
	end

end
