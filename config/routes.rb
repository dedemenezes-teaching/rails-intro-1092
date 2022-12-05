Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # get '/', to: 'pages#home', as: 'home'
  root "pages#home"
  
  # A route is made of:
  # 1. VERB              (GET / POST / PATCH / PUT / DELETE)
  # 2. PATH              (/ or /hufflepuff or /bands)
  # 3. Which controller will handle this request
  # 4. Which action this controller will execute

  # SYNTAX
  # verb '/path', to: 'controller#action', as: :prefix_name

  get '/about', to: 'pages#about', as: 'about'
  # get '/home', to: 'pages#home', as: 'home'
  get '/contact', to: 'pages#contact', as: 'contact'
end
