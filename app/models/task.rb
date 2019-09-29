class Task < ApplicationRecord
    has_many :todos 
    has_many :users, through: :todos #Una tarea puede tener muchos usuarios a traves de Todo
end
