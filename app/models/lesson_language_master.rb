class LessonLanguageMaster < ApplicationRecord
  has_many :lesson_availables, dependent: :destroy
  has_many :teach_availables, dependent: :destroy
end
