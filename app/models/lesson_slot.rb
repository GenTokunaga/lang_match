class LessonSlot < ApplicationRecord
  belongs_to :teacher
  has_one :lesson_reserve, dependent: :destroy

  extend Enumerize

  enumerize :language, in: Teacher.languages.values
end
