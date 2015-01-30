Rails.application.routes.draw do
  root 'home#index'

  resources :projects, only: :show

  get 'blog', to: 'blogposts#index'
end
