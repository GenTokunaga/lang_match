class CreateMasLessonSlot < ActiveRecord::Migration[8.1]
  def change
    create_table :mas_lesson_slots do |t|
      t.time :start_time, null: false
      t.timestamps
    end
    add_index :mas_lesson_slots, %i[start_time], unique: true
  end
end
