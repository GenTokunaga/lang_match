class Admins::ImpersonationsController < Admins::BaseController
  before_action :set_admins_teacher, only: %i[create]
  before_action :set_admin, only: %i[destroy]

  def create
    session[:impersonator_admin_id] = current_admin.id
    sign_in(:teacher, @admins_teacher)
    redirect_to teachers_root_path, notice: '講師としてログインしました'
  end

  def destroy
    session.delete(:impersonator_admin_id)
    sign_out(:teacher)
    sign_in(:admin, @admin)
    redirect_to admins_root_path, notice: '講師からログアウトしました'
  end

  private

  def set_admins_teacher
    @admins_teacher = Teacher.find(params.expect(:id))
  end

  def set_admin
    @admin = Admin.find(params.expect(:id))
  end
end
