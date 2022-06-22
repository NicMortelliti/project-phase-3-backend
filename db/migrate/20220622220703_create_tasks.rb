class CreateTasks < ActiveRecord::Migration[6.1]
  def change
    create_table :tasks do |t|
      t.string :description
      t.datetime :due_date
      t.int :story_points
      t.int :project_id # foreign key
      t.int :user_id # foreign key
      t.timestamps
    end
  end
end
