class TodosController < ApplicationController
  #before_action :set_task, only: [:show]
  before_action :authenticate_user!, except: [:index]

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

  def todos_count

    @todo_check_count = current_user.todos.where(completed: true)
    @tasks_count = Task.all.count
    
  end
end
