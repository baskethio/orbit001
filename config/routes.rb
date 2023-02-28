Rails.application.routes.draw do
  root 'html_pages#home'
  get '/help', to: 'html_pages#help'
  get '/about', to: 'html_pages#about'
  get '/contact', to: "html_pages#contact"
  get "/signup", to: 'users#new'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "application#hello"
end
