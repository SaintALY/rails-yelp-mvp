Rails.application.routes.draw do
  resources :reviews
  resources :restaurants do
    collection do
      get :top
    end
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
