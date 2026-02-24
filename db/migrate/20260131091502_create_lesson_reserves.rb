class CreateLessonReserves < ActiveRecord::Migration[8.1]
  def change
    create_table :lesson_reserves do |t|
      t.references :student, null: false, foreign_key: true
      t.references :lesson_slot, null: false, foreign_key: true, index: { unique: true }
      t.timestamps
    end
  end
end
