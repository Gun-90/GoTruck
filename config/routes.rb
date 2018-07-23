Rails.application.routes.draw do
  
  
  resources :communities
  devise_for :users 
  resources :profiles
  resources :trucks do
      resources :menus
      resources :truck_reviews
      resources :postings
  end
  resources :posting_parts
  resources :posting_reviews
  resources :likes
  resources :followings
  root "trucks#index"
 
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
