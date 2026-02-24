class LessonReserve < ApplicationRecord
  belongs_to :student
  belongs_to :lesson_slot
end
