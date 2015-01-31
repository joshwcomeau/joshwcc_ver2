Rails.application.routes.draw do
  root 'home#index'
  
  get '/blog',     controller: 'blog_posts', action: 'index', as: 'blogs'
  get '/blog/:id', controller: 'blog_posts', action: 'show',  as: 'blog'
  
  get '/login',    controller: 'sessions',   action: 'new'


  resources :projects, only: :show
  resources :sessions, only: [:create, :destroy]
  
end
