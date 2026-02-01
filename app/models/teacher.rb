class Teacher < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :trackable

  has_many :teacher_languages, dependent: :destroy
  has_many :lesson_slots, through: :teacher_languages
  has_one_attached :profile_image do |a|
    a.variant :thumb, resize_to_limit: [200, 200], preprocessed: true
  end
end
