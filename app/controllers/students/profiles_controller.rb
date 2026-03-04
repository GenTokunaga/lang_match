class Students::ProfilesController < Students::BaseController
  before_action :set_student, only: %i[show edit update]

  def show
  end

  def edit
  end

  def update
    if @student.update(student_params)
      redirect_to students_root_path, notice: 'チケットを購入しました', status: :see_other
    else
      render :edit, status: :unprocessable_content
    end
  end

  private

  def set_student
    @student = Student.find(current_student.id)
  end

  def student_params
    params.expect(student: [:ticket_count])
  end
end
