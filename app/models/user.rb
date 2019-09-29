class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
    after_create :load #Este metodo se ejecuta despues de crear las tareas 
    has_many :todos #Un usuario tiene muchas tareas
    has_many :tasks, through: :todos  #Un usuario puede tener muchas tareas a traves de Todo

  private

  def load
    Task.all.each do |task|
      Todo.create(
        task_id: task.id,
        user_id: self.id #Se usa el self porque estoy dentro del modelo de la Clase User (user.rb)
      )
    end
  end
end

