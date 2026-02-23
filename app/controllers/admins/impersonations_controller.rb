class Admins::ImpersonationsController < Admins::BaseController
  before_action :set_admins_teacher, only: %i[create]

  def create
    impersonate!(current_admin)
    sign_in(:teacher, @admins_teacher)
    redirect_to teachers_root_path, notice: '講師としてログインしました'
  end

  def destroy
    clear_impersonation!
    sign_out(:teacher)
    redirect_to admins_root_path, notice: '講師からログアウトしました'
  end

  private

  def set_admins_teacher
    @admins_teacher = Teacher.find(params.expect(:id))
  end
end
