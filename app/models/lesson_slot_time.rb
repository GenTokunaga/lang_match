class LessonSlotTime < ApplicationRecord
  TIMES = [
    '07:00',
    '08:00',
    '09:00',
    '10:00',
    '11:00',
    '12:00',
    '13:00',
    '14:00',
    '15:00',
    '16:00',
    '17:00',
    '18:00',
    '19:00',
    '20:00',
    '21:00',
    '22:00',
  ].freeze

  class << self
    def options_for_select
      all.map { [format_time_range(_1), _1] }
    end

    def format_time_range(start_time)
      "#{I18n.l(start_time, format: :lesson_slot)}〜#{I18n.l(start_time + 50.minutes, format: :lesson_slot)}"
    end

    private

    def all
      TIMES.map { parse_time(_1) }
    end

    def parse_time(str)
      Time.zone.parse(str)
    end
  end
end
