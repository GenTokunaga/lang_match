class CreateMasLessonTickets < ActiveRecord::Migration[8.1]
  def change
    create_table :mas_lesson_tickets do |t|
      t.integer :price, null: false
      t.timestamps
    end
  end
end
