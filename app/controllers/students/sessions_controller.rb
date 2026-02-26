class Students::SessionsController < Devise::SessionsController
  layout 'student'

  protected

  def after_sign_in_path_for(resource)
    students_root_path
  end

  def after_sign_out_path_for(resource)
    new_student_session_path
  end
end
