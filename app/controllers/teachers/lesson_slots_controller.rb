class Teachers::LessonSlotsController < Teachers::BaseController
  before_action :set_lesson_slot, only: %i[destroy]
  before_action :set_mas_lesson_slots, only: %i[new create]

  def index
    @lesson_slots = current_teacher.lesson_slots.preload(:mas_lesson_slot)
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

  def set_mas_lesson_slots
    @mas_lesson_slots = MasLessonSlot.cached_all
  end

  def lesson_slot_params
    params.expect(lesson_slot: %i[date mas_lesson_slot_id language])
  end
end
