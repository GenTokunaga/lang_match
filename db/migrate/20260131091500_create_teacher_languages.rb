class CreateTeacherLanguages < ActiveRecord::Migration[8.1]
  def change
    create_table :teacher_languages do |t|
      t.references :teacher, null: false, foreign_key: true
      t.references :mas_language, null: false, foreign_key: true
      t.timestamps
    end
    add_index :teacher_languages, %i[teacher_id mas_language_id], unique: true
  end
end
