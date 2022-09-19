Rails.application.routes.draw do
  resource :tweets
  root 'tweets#index'
  root 'tweets#new'
  post 'tweets', to: 'tweets#create'
  root 'tweets#create'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
