class TeacherLanguage < ApplicationRecord
  belong_to :teacher
  belong_to :mas_language
end
