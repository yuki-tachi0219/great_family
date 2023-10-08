Rails.application.routes.draw do
  resources :great_grand_children
  resources :grand_children
  resources :children
  resources :parents
  resources :grand_parents
  resources :great_grand_parents
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
