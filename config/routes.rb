Rails.application.routes.draw do
  scope :api do
    resources :service_users
    resources :services
    resources :users
  end
end
