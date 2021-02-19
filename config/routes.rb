Rails.application.routes.draw do
  root "api/v1/posts#index"

  namespace :api do
    namespace :v1 do
      resources :posts do
        resources :comments
      end
    end
  end
end
