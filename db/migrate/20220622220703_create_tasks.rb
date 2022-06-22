class CreateTasks < ActiveRecord::Migration[6.1]
  def change
    create_table :tasks do |t|
      t.string :description
      t.datetime :due_date
      t.integer :story_points
      t.integer :project_id # foreign key
      t.integer :user_id # foreign key
      t.timestamps
    end
  end
end
