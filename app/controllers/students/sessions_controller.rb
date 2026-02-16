class Students::SessionsController < Devise::SessionsController
  layout 'student'

  def new
    super
    session.delete(:impersonator_admin_id)
  end

  protected

  def after_sign_in_path_for(resource)
    students_root_path
  end

  def after_sign_out_path_for(resource)
    new_student_session_path
  end
end
