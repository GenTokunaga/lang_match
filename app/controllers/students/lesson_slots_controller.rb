class Students::LessonSlotsController < Students::BaseController
  def index
    search = params.fetch(:search, {})
    @lesson_slots = LessonSlot.between_start_end_dates(search[:start_date], search[:end_date])
                              .with_start_times(search[:start_times])
                              .with_languages(search[:languages])
                              .order_date_time_language
  end
end
