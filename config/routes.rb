Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  get 'quotes', to: 'quotes#index'
  post 'quotes', to: 'quotes#create'
  resource :quote
end
