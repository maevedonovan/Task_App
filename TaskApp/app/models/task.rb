class Task < ActiveRecord::Base
  belongs_to :task_list

  validates :title, :due_date, :task_list
  validates :priority, numericality: true
  validates :priority, inclusion: { in: 1..10, message: "\"%{value}\" must be between 1 and 10" }

  scope: :completed, -> { where(is_completed: true)}
  scope: :completed, -> { order(due_date: :asc)}
  scope: :pending, -> { where(is_completed: false)}
  scope: :pending, -> { order(due_date: :desc)}

end
