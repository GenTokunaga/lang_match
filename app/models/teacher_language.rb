class TeacherLanguage < ApplicationRecord
  belongs_to :teacher
  belongs_to :mas_language
  has_many :lesson_slots, dependent: :destroy

  def label
    mas_language.language
  end
end
