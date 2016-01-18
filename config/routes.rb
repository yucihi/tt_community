Rails.application.routes.draw do
  devise_for :users 
  resources :users do
    resources :profiles
    get 'my_comments/index'
    resources :contents do
      resources :comments
    end
  end
  root to: "top#index"

end
