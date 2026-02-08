class MasLessonSlot < ApplicationRecord
  has_many :lesson_slots, dependent: :destroy

  def self.cached_all
    Rails.cache.fetch('mas_lesson_slot/all', expires_in: 12.hours) do
      all.to_a
    end
  end

  def label
    "#{I18n.l(start_time, format: :lesson_slot)}〜#{I18n.l(end_time, format: :lesson_slot)}"
  end

  private

  def end_time
    start_time + 50.minutes
  end
end
