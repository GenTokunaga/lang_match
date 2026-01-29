class CreateLessonTicketMasters < ActiveRecord::Migration[8.1]
  def change
    create_table :lesson_ticket_masters do |t|
      t.integer :price, null: false
      t.timestamps
    end
  end
end
