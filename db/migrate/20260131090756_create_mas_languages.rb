class CreateMasLanguages < ActiveRecord::Migration[8.1]
  def change
    create_table :mas_languages do |t|
      t.string :language, null: false
      t.timestamps
    end
    add_index :mas_languages, %i[language], unique: true
  end
end
