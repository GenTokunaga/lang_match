class CreateLessonTimeMasters < ActiveRecord::Migration[8.1]
  def change
    create_table :lesson_time_masters do |t|
      t.time :time, null: false
      t.timestamps
    end
  end
end
