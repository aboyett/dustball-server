Rails.application.routes.draw do
  resources :samples
  get 'dashboard', to: 'dashboard#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
