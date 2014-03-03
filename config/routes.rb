Blog::Application.routes.draw do

  get '/home',    :to => 'home#index'
  resources :authors

  resources :articles do
    resources :author
    resources :comments
  end


  root to: 'home#index'


end
