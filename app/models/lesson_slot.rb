class LessonSlot < ApplicationRecord
  belong_to :teacher
  belong_to :mas_lesson_slot
  belong_to :lesson_available
  has_one :lesson_reserve, dependent: :destroy
end
