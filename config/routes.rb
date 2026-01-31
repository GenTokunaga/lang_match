Rails.application.routes.draw do
  devise_for :teachers, controllers: {
    sessions: 'admins/sessions',
  }
  devise_for :admins, controllers: {
    sessions: 'admins/sessions',
  }
  devise_for :students, controllers: {
    sessions: 'admins/sessions',
  }

  # TODO: 動作確認のために一時的に管理ユーザーページをルート。のちに削除 or 変更
  root 'admins/teachers#index'

  namespace :admins do
    resources :teachers, only: %i[index show new edit create update destroy]
  end

  namespace :students do
    root to: 'dashboard#index'
  end

  namespace :teachers do
    root to: 'dashboard#index'
  end
end
