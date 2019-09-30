class TasksController < ApplicationController
  #before_action :set_task, only: [:show]
  before_action :authenticate_user!, except: [:index]
  def index
    if user_signed_in?
    @todos = current_user.todos
    else
      @tasks = Task.all
    end
  end
end






    


    

    