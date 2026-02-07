class LessonSlot < ApplicationRecord
  belongs_to :teacher
  belongs_to :mas_lesson_slot
  has_one :lesson_reserve, dependent: :destroy

  extend Enumerize

  enumerize :language, in: Teacher.languages.values
end
