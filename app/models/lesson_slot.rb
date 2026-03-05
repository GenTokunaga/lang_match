class LessonSlot < ApplicationRecord
  belongs_to :teacher
  has_one :lesson_reserve, dependent: :destroy

  extend Enumerize

  enumerize :language, in: Teacher.languages.values

  scope :between_start_end_dates, ->(start_date, end_date) {
    return all if start_date.blank? || end_date.blank?

    where(date: Date.parse(start_date)..Date.parse(end_date))
  }

  scope :with_start_times, ->(times) {
    values = Array(times).compact_blank.map { Time.zone.parse(_1) }
    return all if values.empty?

    where(start_time: values)
  }

  scope :with_languages, ->(langs) {
    values = Array(langs).compact_blank
    return all if values.empty?

    where(language: values)
  }

  scope :order_date_time_language, -> {
    order(date: :asc, start_time: :asc, language: :asc)
  }
end
