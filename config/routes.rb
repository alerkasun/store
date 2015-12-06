Rails.application.routes.draw do
  resources :ordered_books
  resources :orders
  resources :books
  root 'pages#home'
  get 'pages/home'
  get 'pages/about'
  get 'pages/contact'

  resources :books do
    collection do
      post 'add_to_cart'
      get 'watch_out_cart'
      post 'remove_from_cart'
    end
  end
end
