Rails.application.routes.draw do
  
  
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
  
 
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
