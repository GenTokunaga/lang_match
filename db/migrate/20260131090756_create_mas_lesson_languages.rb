class CreateMasLessonLanguages < ActiveRecord::Migration[8.1]
  def change
    create_table :mas_lesson_languages do |t|
      t.string :language, null: false
      t.timestamps
    end
  end
end
