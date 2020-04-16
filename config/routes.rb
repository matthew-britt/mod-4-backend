Rails.application.routes.draw do
  scope :api do
    resources :service_users
    resources :services
    resources :users
  end

  get '/api/users/:id/history', to: 'users#history'
end
