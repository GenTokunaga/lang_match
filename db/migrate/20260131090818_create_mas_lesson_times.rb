class CreateMasLessonTimes < ActiveRecord::Migration[8.1]
  def change
    create_table :mas_lesson_times do |t|
      t.time :time, null: false
      t.timestamps
    end
  end
end
