class LessonSlot < ApplicationRecord
  belongs_to :teacher
  has_one :lesson_reserve, dependent: :destroy

  extend Enumerize

  enumerize :language, in: Teacher.languages.values

  scope :between_dates, ->(start_date, end_date) {
    return all if start_date.blank? || end_date.blank?

    where(date: start_date..end_date)
  }

  scope :with_start_times, ->(times) {
    values = Array(times).compact_blank
    return all if values.empty?

    where(start_time: times)
  }

  scope :with_languages, ->(langs) {
    values = Array(langs).compact_blank
    return all if values.empty?

    where(language: langs)
  }

  scope :ordered, -> {
    order(date: :asc, start_time: :asc, language: :asc)
  }
end
