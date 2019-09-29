class TasksController < ApplicationController
  #before_action :set_task, only: [:show]
  before_action :authenticate_user!, except: [:index]
  
  def index
    @todos = Todo.all
    @tasks = Task.all
    
  end

  # private

  # def set_task
  #     @tasks = Task.find(params[:task_id])
  # end
end






    


    

    