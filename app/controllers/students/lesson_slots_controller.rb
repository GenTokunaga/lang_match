class Students::LessonSlotsController < Students::BaseController
  def index
    search = params.fetch(:search, {})
    @lesson_slots = LessonSlot.all
                              .between_dates(search[:start_date], search[:end_date])
                              .with_start_times(search[:start_times])
                              .with_languages(search[:languages])
                              .ordered
  end
end
