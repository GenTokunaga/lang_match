class Teachers::RegistrationsController < Devise::RegistrationsController
  before_action :forbid_signup, only: %i[new create destroy]

  def new
    super
  end

  def create
    super
  end

  def destroy
    super
  end

  private

  def forbid_signup
    redirect_to new_teacher_session_path, alert: '講師はユーザー作成・削除ができません'
  end
end
