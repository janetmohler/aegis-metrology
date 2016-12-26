Rails.application.routes.draw do
  devise_for :users

  root 'static_pages#index' 

  resources :surveys
  resources :representatives
  resources :users

end
