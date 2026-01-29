class LessonTimeMaster < ApplicationRecord
  has_many :lesson_availables, dependent: :destroy
end
