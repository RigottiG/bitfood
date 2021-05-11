Rails.application.routes.draw do
  scope '/api', default: {format: :json} do
    resources :categories, only: [:index]
    resources :restaurant, only: %i[index show]
    resources :orders, only: %i[create show]
    resources :available_cities, only: [:index]
  end
end
