class CreateExercises < ActiveRecord::Migration
  def change
    create_table :exercises do |t|
      t.date :date
      t.string :exercise
      t.integer :weight
      t.integer :reps
      t.integer :max
      t.integer :bulk
      t.integer :tone
      t.integer :user_id

      t.timestamps  
    end
  end
end
