Rails.application.routes.draw do
  root 'static_pages#index'  
  resources :surveys
  resources :representatives
end
