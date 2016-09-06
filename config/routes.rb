Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :species do
    resources :sightings
  end
  resources  :regions
end
