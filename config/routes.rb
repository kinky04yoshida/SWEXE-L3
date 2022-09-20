Rails.application.routes.draw do
  resource :tweets
  root 'tweets#index'
  post 'tweets', to: 'tweets#create'
  root 'tweets#create'
  get 'tweets/:id', to: 'tweets#show'
  delete 'tweets/:id', to: 'tweets#destroy'
  get 'tweets/:id/edit', to: 'tweets#edit'
  patch 'tweets/:id', to: 'tweets#update'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
