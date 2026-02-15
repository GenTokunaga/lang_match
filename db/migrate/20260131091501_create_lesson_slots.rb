class CreateLessonSlots < ActiveRecord::Migration[8.1]
  def change
    create_table :lesson_slots do |t|
      t.references :teacher,         null: false, foreign_key: true
      t.date       :date,            null: false
      t.references :mas_lesson_slot, null: false, foreign_key: true
      t.string     :language,        null: false
      t.timestamps
    end
    add_index :lesson_slots, :date
    add_index :lesson_slots, :language
    add_index :lesson_slots, %i[teacher_id date mas_lesson_slot_id], unique: true
  end
end
