class Student < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :trackable

  has_many :lesson_reserveds, dependent: :destroy
end
