Rails.application.routes.draw do
  devise_for :admins, controllers: {
    sessions: 'admins/sessions',
  }
  devise_for :students, controllers: {
    sessions: 'students/sessions',
    registrations: 'students/registrations',
  }
  devise_for :teachers, controllers: {
    sessions: 'teachers/sessions',
  }

  namespace :admins do
    root 'teachers#index'
    resources :teachers, only: %i[index show new edit create update destroy]
    resource :impersonation, only: %i[create destroy]
  end

  namespace :students do
    root 'lesson_slots#index'
    resources :lesson_reserves, only: %i[index]
    resources :lesson_slots, only: %i[index show]
  end

  namespace :teachers do
    root 'lesson_slots#index'
    resource :profile, only: %i[show edit update]
    resources :lesson_slots, only: %i[index new create destroy]
  end
end
