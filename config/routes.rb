Rails.application.routes.draw do
  devise_for :admins, controllers: {
    sessions: 'admins/sessions',
  }
  devise_for :students, controllers: {
    sessions: 'students/sessions',
  }
  devise_for :teachers, controllers: {
    registrations: 'teachers/registrations',
    sessions: 'teachers/sessions',
  }

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
    resources :teachers, only: %i[show edit update]
    resources :lesson_slots, only: %i[index new create destroy]
  end
end
