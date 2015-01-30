Rails.application.routes.draw do
  root 'home#index'

  resources :projects, only: :show

  get 'blog', controller: 'blog_posts', action: 'index'
end
