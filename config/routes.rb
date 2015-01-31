Rails.application.routes.draw do
  root 'home#index'

  resources :projects, only: :show

  get '/blog',     controller: 'blog_posts', action: 'index', as: 'blogs'
  get '/blog/:id', controller: 'blog_posts', action: 'show',  as: 'blog'
end
