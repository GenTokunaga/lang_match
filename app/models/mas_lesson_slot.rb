class MasLessonSlot < ApplicationRecord
  has_many :lesson_slots, dependent: :destroy
end
