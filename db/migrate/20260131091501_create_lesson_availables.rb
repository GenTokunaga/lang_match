class CreateLessonAvailables < ActiveRecord::Migration[8.1]
  def change
    create_table :lesson_availables do |t|
      t.references :teacher, null: false, foreign_key: true
      t.date :date, null: false
      t.references :mas_lesson_time, null: false, foreign_key: true
      t.references :mas_lesson_language, null: false, foreign_key: true
      t.timestamps
    end
    add_index :lesson_availables, %i[teacher_id date mas_lesson_time_id], unique: true
  end
end
