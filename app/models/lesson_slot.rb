class LessonSlot < ApplicationRecord
  belongs_to :teacher_language
  belongs_to :mas_lesson_slot
  belongs_to :lesson_available
  has_one :lesson_reserve, dependent: :destroy
end
