class CreateMasLessonSlot < ActiveRecord::Migration[8.1]
  def change
    create_table :mas_lesson_slots do |t|
      t.time :start_time, null: false
      t.integer :duration_minutes, null: false
      t.timestamps
    end
    add_index :mas_lesson_slots, %i[start_time duration_minutes], unique: true
  end
end
