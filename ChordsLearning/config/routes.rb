Rails.application.routes.draw do
  devise_for :users
  resources :home
  root to: "home#index"
 get 'songs/new' => 'songs#new'
 post 'songs/new' => 'songs#create'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
