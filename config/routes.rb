Rails.application.routes.draw do
  get 'comments/index'

  get 'comments/new'

  get 'comments/create'

  get 'comments/show'

  get 'comments/edit'

  get 'comments/update'

  get 'comments/destroy'

  get 'contents/index'

  get 'contents/new'

  get 'contents/create'

  get 'contents/show'

  get 'contents/edit'

  get 'contents/update'

  get 'contents/destroy'

  get 'profiles/new'

  get 'profiles/create'

  get 'profiles/show'

  get 'profiles/edit'

  get 'profiles/update'

  get 'profiles/destroy'

  get 'top/index'

  devise_for :users 
  resources :users do
    resources :profiles
    resources :contents
  end
  root to: "top#index"

end
