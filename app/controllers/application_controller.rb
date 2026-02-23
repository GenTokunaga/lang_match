class ApplicationController < ActionController::Base
  allow_browser versions: :modern

  # sessionに関する処理はscope横断で機能させるため、ApplicationControllerで一元管理する
  helper_method :impersonator_admin_id

  private

  def impersonator_admin_id
    session[:impersonator_admin_id]
  end

  def impersonate!(admin)
    session[:impersonator_admin_id] = admin.id
  end

  def clear_impersonation!
    session.delete(:impersonator_admin_id)
  end
end
