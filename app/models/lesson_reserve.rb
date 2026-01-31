class LessonReserve < ApplicationRecord
  belong_to :student
  belong_to :lesson_slot
end
