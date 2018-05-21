Rails.application.routes.draw do
  devise_for :users, controllers: {
    registrations: 'registrations',
    sessions: 'users/sessions'
  }

  root 'posts#index'


  resources :users, only: [:index, :show, :update]
  match 'users/:id' => 'users#show', via: :get
  get 'users/:id' => 'users#show'
  get '/edit/bio' => 'users#edit_bio'
  get '/edit/bio' => 'users#update'

  resources :posts do
    resources :comments
  end

end

# For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
