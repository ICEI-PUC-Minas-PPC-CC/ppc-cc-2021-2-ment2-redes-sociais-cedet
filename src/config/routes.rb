Rails.application.routes.draw do
  namespace :site do
    get 'welcome/index'
    get 'search', to: 'search#questions'
    get 'subject/:subject_id/:subject', to: 'search#subject', as: 'search_subject'
    post 'answer', to: 'answer#question'
  end

  namespace :admins_backoffice do
    get 'welcome/index' # Deshboard
    resources :admins   # Admins
    resources :subjects # Assuntos
    resources :questions # Perguntas
  end
  devise_for :admins
  
  # get 'inicio', to: 'site/admins_backoffice_admins_path#index'
  
  # root to: 'site/admins_backoffice_admins_path#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
