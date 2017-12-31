Rails.application.routes.draw do
  get '/curriculum' => "home#curriculum"
  resources :curriculums
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  root 'home#top'
  resources :articles do
    collection do
      post 'purchase'
    end
    resources :reads, only: [:create, :destroy]
  end
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
