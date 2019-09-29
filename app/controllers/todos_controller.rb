class TodosController < ApplicationController
  #before_action :set_task, only: [:show]
  before_action :authenticate_user!, except: [:index]

  def index
    @todos = Todo.all
    @tasks = Task.all
    
  end

  def show
    todo = Todo.find(params[:todo_id])
    @task = todo.task
    @todos = Todo.where(task_id: @task.id, completed: true)
  end

  def update
    todo = Todo.find(params[:todo_id])
    todo.completed = !todo.completed
    todo.save
    redirect_to root_path
  end

  # private

  # def set_task
  #     @task = Task.find(params[:task_id])
  # end
end
