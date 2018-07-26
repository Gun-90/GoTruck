Rails.application.routes.draw do
  
  
  resources :comments
  resources :communities
  devise_for :users 
  resources :trucks do
    #resources :likes
    resources :menus
    resources :truck_reviews
    end
  #resources :likes
  root "trucks#index"
  post '/map_data', to: 'trucks#map_data', as: 'map_data'
  get '/map', to: 'trucks#map', as: 'map'
  post 'trucks/:truck_id/like' => 'likes#like_toggle', as: 'like'
  get 'recommend' => 'trucks#recommend', as: 'recommend'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
