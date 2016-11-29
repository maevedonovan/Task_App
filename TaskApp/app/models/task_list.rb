class TaskList < ActiveRecord::Base
  has_many :tasks

  validates :name, :description
  validates :name, uniqueness: true
  
end
