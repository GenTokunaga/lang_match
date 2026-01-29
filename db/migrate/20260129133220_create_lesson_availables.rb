class CreateLessonAvailables < ActiveRecord::Migration[8.1]
  def change
    create_table :lesson_availables do |t|
      t.references :teacher, null: false, foreign_key: true
      t.date :date, null: false
      t.references :lesson_time_master, null: false, foreign_key: true
      t.references :lesson_language_master, null: false, foreign_key: true
      t.timestamps
    end
    add_index :lesson_availables, %i[teacher_id date lesson_time_master_id], unique: true
  end
end
