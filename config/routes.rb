Rails.application.routes.draw do
  get 'static_pages/launch'

  resources :users
  root 'application#display_map'


end
