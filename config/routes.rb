Rails.application.routes.draw do
  root "home#index"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  devise_for :users,
                path: "",
                path_names: {
                  sign_in: 'login',
                  sign_out: 'logout',
                  password: 'secret',
                  confirmation: 'confirmation',
                  unlock: 'unlock',
                  registration: 'account',
                  sign_up: 'sign_up'
                },
                controllers: { registrations: 'users/registrations'}


  resources :profile, controller: 'users/profiles', only: [:show, :edit, :update]
  resources :post, controller: 'users/posts', only: [:create, :destroy]

end
