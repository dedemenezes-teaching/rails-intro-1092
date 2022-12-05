Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # get '/', to: 'pages#home', as: 'home'
  root "pages#home"

  # 1. VERB ( GET / POST / PATCH / DELETE )
  # 2. PATH
  # 3. Which controller will handle this request
  # 3.1 Controller name ALWAYS on PLURAL!!!
  # 4. Which action inside this controller will get executed
  # 4.1 Action name the SAME as your path

  # SYNTAX
  # verb '/path', to: 'controller_name#action', as: :nickname(prefix)

  get '/about', to: 'pages#about', as: 'about'
  # get '/home', to: 'pages#home', as: 'home'
  get '/contact', to: 'pages#contact', as: 'contact'
end
