class CreateLessonLanguageMasters < ActiveRecord::Migration[8.1]
  def change
    create_table :lesson_language_masters do |t|
      t.string :language, null: false
      t.timestamps
    end
  end
end
