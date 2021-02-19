Rails.application.routes.draw do
  devise_for :users
  devise_scope :user do
    post 'users/guest_sign_in', to: 'users/sessions#new_guest'
  end
  root to: "tweets#index"

  resources :tweets do
    resources :comments, only: :create
    post 'like/:id' => 'likes#create', as: 'create_like'
    delete 'like/:id' => 'likes#destroy', as: 'destroy_like'
    collection do
      get 'search'
    end  
  end

  resources :users, only: :show do
    collection do
      get :likes
    end
  end
end
