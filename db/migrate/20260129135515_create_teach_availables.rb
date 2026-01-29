class CreateTeachAvailables < ActiveRecord::Migration[8.1]
  def change
    create_table :teach_availables do |t|
      t.references :teacher, null: false, foreign_key: true
      t.references :lesson_language_master, null: false, foreign_key: true
      t.timestamps
    end
  end
end
