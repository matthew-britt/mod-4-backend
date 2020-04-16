Rails.application.routes.draw do
  scope :api do
    resources :service_users
    resources :services
    resources :users
  end

  get '/api/users/:id/history', to: 'users#history'
  get '/api/categories', to: 'services#category'
  get '/api/categories/:name', to: 'services#categorylist'
end
