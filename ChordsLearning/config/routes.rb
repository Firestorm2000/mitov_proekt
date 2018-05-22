Rails.application.routes.draw do
  resources :chords
  resources :artists
  devise_for :users
  resources :home
  root to: "home#index"
 get 'songs/new' => 'songs#new'
 post 'songs/new' => 'songs#create' 
 get 'songs/show' => 'songs#show'
 get 'songs'=>'songs#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
