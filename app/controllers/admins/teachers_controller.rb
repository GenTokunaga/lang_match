class Admins::TeachersController < Admins::BaseController
  before_action :set_admins_teacher, only: %i[show edit update destroy]

  def index
    @admins_teachers = Teacher.all
  end

  def show
  end

  def new
    @admins_teacher = Teacher.new
  end

  def edit
  end

  def create
    @admins_teacher = Teacher.new(admins_teacher_params)
    if @admins_teacher.save
      redirect_to admins_teachers_path, notice: '講師を作成しました'
    else
      render :new, status: :unprocessable_content
    end
  end

  def update
    if @admins_teacher.update(admins_teacher_params)
      redirect_to admins_teachers_path, notice: '講師を更新しました', status: :see_other
    else
      render :edit, status: :unprocessable_content
    end
  end

  def destroy
    @admins_teacher.destroy!
    redirect_to admins_teachers_path, notice: '講師を削除しました', status: :see_other
  end

  private

  def set_admins_teacher
    @admins_teacher = Teacher.find(params.expect(:id))
  end

  def admins_teacher_params
    params.expect(teacher: %i[name email password password_confirmation])
  end
end
