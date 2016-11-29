class AddIsPrivateToTasks < ActiveRecord::Migration
  def change
    add_column :tasks, :is_private, :Boolean
  end
end
