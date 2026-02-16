class Students::RegistrationsController < Devise::RegistrationsController
  layout 'student'
  before_action :configure_permitted_parameters

  def new
    super
    session.delete(:impersonator_admin_id)
  end

  protected

  def after_sign_up_path_for(resource)
    students_root_path
  end

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name])
  end
end
