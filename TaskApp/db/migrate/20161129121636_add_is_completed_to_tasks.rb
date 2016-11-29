class AddIsCompletedToTasks < ActiveRecord::Migration
  def change
    add_column :tasks, :is_completed, :Boolean
  end
end
