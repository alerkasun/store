Rails.application.routes.draw do
  resources :comments
  devise_for :users
  resources :publishers
  resources :book_storages
  resources :storages
  resources :authors
  resources :genres
  resources :ordered_books
  resources :orders
  root 'pages#home'

  get 'pages/home'
  get 'pages/about'
  get 'pages/contact'

  resources :books do
    collection do
      post 'add_to_cart'
      get 'watch_out_cart'
      post 'remove_from_cart'
      get 'search'
    end
  end
end
