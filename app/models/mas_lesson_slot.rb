class MasLessonSlot < ApplicationRecord
  has_many :lesson_slots, dependent: :destroy

  def end_time
    start_time + duration_minutes.minutes
  end

  def label
    "#{I18n.l(start_time, format: :lesson_slot)}〜#{I18n.l(end_time, format: :lesson_slot)}"
  end
end
