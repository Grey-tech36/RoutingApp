Rails.application.routes.draw do

  namespace :admin do
    
    get 'dashboard/main'
    get 'dashboard/user'
    get 'dashboard/blog'

  end

  # changed from pages/about for simpler url
  get 'about', to: 'pages#about' 
  
  # changed from pages/about for simpler url
  get 'contact', to: 'pages#contact', as:'lead' 

  resources :blogs
  resources :posts

  get 'posts/*missing', to: 'posts#missing'

  get 'query/:else/:another_one', to: 'pages#something'
  get 'query/:else', to: 'pages#something'

  root to: 'pages#home'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
