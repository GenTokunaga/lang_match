class LessonSlot < ApplicationRecord
  belongs_to :teacher_language
  belongs_to :mas_lesson_slot
  has_one :lesson_reserve, dependent: :destroy
end
