Rails.application.routes.draw do
  root 'home#index'
  
  resources :projects, only: :show
  resources :sessions, only: [:create, :destroy]
  resources :blog_posts, path: 'blog'

  get '/login',    controller: 'sessions',   action: 'new'
  
end
