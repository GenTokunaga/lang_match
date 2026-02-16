class Students::LessonSlotsController < Students::BaseController
  def index
    @lesson_slots = LessonSlot.all
                              .between_dates(params[:start_date], params[:end_date])
                              .with_start_times(params[:start_times])
                              .with_languages(params[:languages])
                              .ordered
  end
end
