Rails.application.routes.draw do
  devise_for :users
#n the DSL available within this file, see http://guides.rubyonrails.org/routing.html
root 'places#index'
resources :places
end
