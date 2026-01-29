class CreateLessonReserveds < ActiveRecord::Migration[8.1]
  def change
    create_table :lesson_reserveds do |t|
      t.references :student, null: false, foreign_key: true
      t.references :lesson_available, null: false, foreign_key: true
      t.timestamps
    end
    add_index :lesson_reserveds, %i[student_id lesson_available_id], unique: true
  end
end
