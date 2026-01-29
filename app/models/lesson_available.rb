class LessonAvailable < ApplicationRecord
  belong_to :teacher
  belong_to :lesson_language_master
  belong_to :lesson_time_master
end
