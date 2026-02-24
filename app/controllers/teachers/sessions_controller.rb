class Teachers::SessionsController < Devise::SessionsController
  layout 'teacher'

  def new
    super
    clear_impersonation
  end

  protected

  def after_sign_in_path_for(resource)
    teachers_root_path
  end

  def after_sign_out_path_for(resource)
    new_teacher_session_path
  end
end
