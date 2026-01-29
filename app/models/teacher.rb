class Teacher < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :trackable

  has_many :lesson_availables, dependent: :destroy
  has_many :teach_availables, dependent: :destroy
end
