class Teacher < ApplicationRecord
  devise :database_authenticatable, :recoverable, :rememberable, :validatable, :trackable

  has_many :lesson_slots, dependent: :destroy
  has_one_attached :profile_image do |attachable|
    attachable.variant :thumb, resize_to_limit: [200, 200], preprocessed: true
  end

  extend Enumerize

  enumerize :languages, in: %i[japanese chinese korean thai myanmar vietnamese], multiple: true

  def language_options_for_select
    languages.map { [Teacher.languages.find_value(_1).text, _1] }
  end
end
