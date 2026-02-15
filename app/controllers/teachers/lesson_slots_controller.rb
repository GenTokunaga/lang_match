class Teachers::LessonSlotsController < Teachers::BaseController
  before_action :set_lesson_slot, only: %i[destroy]

  def index
    @lesson_slots = current_teacher.lesson_slots
  end

  def new
    @lesson_slot = LessonSlot.new
  end

  def create
    @lesson_slot = current_teacher.lesson_slots.build(lesson_slot_params)
    if @lesson_slot.save
      redirect_to teachers_root_path, notice: 'レッスン枠を作成しました'
    else
      render :new, status: :unprocessable_content
    end
  end

  def destroy
    @lesson_slot.destroy!
    redirect_to teachers_root_path, notice: 'レッスン枠を削除しました', status: :see_other
  end

  private

  def set_lesson_slot
    @lesson_slot = LessonSlot.find(params.expect(:id))
  end

  def lesson_slot_params
    params.expect(lesson_slot: %i[date start_time language])
  end
end
