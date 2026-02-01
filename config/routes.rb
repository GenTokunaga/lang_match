Rails.application.routes.draw do
  devise_for :admins, controllers: {
    sessions: 'admins/sessions',
  }
  devise_for :students, controllers: {
    sessions: 'students/sessions',
  }
  devise_for :teachers, controllers: {
    sessions: 'teachers/sessions',
  }

  # TODO: 動作確認のために一時的に管理ユーザーページをルート。のちに削除 or 変更
  root 'admins/teachers#index'

  namespace :admins do
    root 'teachers#index'
    resources :teachers, only: %i[index show new edit create update destroy]
    resources :impersonations, only: %i[create destroy]
  end

  namespace :students do
    root to: 'dashboard#index'
  end

  namespace :teachers do
    root 'lesson_slots#index'
    resources :lesson_slots, only: %i[index new create destroy]
  end
end
