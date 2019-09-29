Rails.application.routes.draw do
  get 'todos', to: 'todos#index', as: 'todos'
  get 'todo/:todo_id', to: 'todos#show', as: 'todo'
  patch 'todos/:todo_id', to: 'todos#update', as: 'update_todo'
  devise_for :users
  #patch 'todos/:todo_id', to: 'todos#update', as: 'todos_completed'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'tasks#index'
end
