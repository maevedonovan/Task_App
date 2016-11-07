class CreateTaskLists < ActiveRecord::Migration
  def change
    create_table :task_lists do |t|
      t.string :name
      t.string :description

      t.timestamps null: false
    end
  end
end
