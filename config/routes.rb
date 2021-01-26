Rails.application.routes.draw do
  resources :receta
  resources :procesos
  resources :operarios
  resources :maquinas
  resources :productos
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
