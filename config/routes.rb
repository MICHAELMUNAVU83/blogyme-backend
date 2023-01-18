Rails.application.routes.draw do
  resources :comments
  resources :posts
  resources :categories
  resources :authors
  get 'recent_posts', to: 'posts#recent_posts'
  get 'related_posts/:id', to: 'posts#related_posts'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
