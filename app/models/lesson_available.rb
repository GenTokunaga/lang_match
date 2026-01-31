class LessonAvailable < ApplicationRecord
  belong_to :teacher
  belong_to :mas_lesson_language
  belong_to :mas_lesson_time
end
