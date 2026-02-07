class Teachers::TeachersController < Teachers::BaseController
  before_action :set_teacher, only: %i[show edit update]

  def show
  end

  def edit
  end

  def update
    if @teacher.update(teacher_params)
      redirect_to teachers_root_path, notice: '講師ユーザーの情報を更新しました', status: :see_other
    else
      render :edit, status: :unprocessable_content
    end
  end

  private

  def set_teacher
    @teacher = Teacher.find(params.expect(:id))
  end

  def teacher_params
    params.expect(teacher: [:name, :profile, :profile_image, { languages: [] }])
  end
end
