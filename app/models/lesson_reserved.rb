class LessonReserved < ApplicationRecord
  belong_to :student
  belong_to :lesson_available
end
