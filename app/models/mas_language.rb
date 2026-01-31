class MasLanguage < ApplicationRecord
  has_many :lesson_slots, dependent: :destroy
  has_many :lesson_availables, dependent: :destroy
end
