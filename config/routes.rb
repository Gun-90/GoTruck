Rails.application.routes.draw do
  resources :posting_reviews
  resources :truck_reviews
  devise_for :users
  resources :likes
  resources :followings
  resources :posting_parts
  resources :postings
  resources :menus
  resources :trucks
  resources :profiles
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
