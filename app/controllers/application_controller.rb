class ApplicationController < ActionController::Base
  allow_browser versions: :modern

  def after_sign_out_path_for(resource_or_scope)
    case resource_or_scope
    when :admin
      new_admin_session_path
    else
      super
    end
  end

  def after_sign_in_path_for(resource_or_scope)
    if resource.is_a?(Admin)
      admins_teachers_path
    else
      super
    end
  end
end
