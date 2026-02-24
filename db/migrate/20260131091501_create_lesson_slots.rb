class CreateLessonSlots < ActiveRecord::Migration[8.1]
  def change
    create_table :lesson_slots do |t|
      t.references :teacher,         null: false, foreign_key: true, index: false
      t.date       :date,            null: false
      t.time       :start_time,      null: false
      t.string     :language,        null: false
      t.timestamps
    end
    add_index :lesson_slots, :date
    add_index :lesson_slots, :language
    add_index :lesson_slots, %i[teacher_id date start_time], unique: true
  end
end
