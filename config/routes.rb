Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # root to: "controller#action" link to nav bar?

  root to: 'restaurants#index'
  resources :restaurants, only: [ :index, :show, :new, :create ] do
    resources :reviews, only: [ :new, :create ]
  end
end



    # member do

    # end

    # collection do

    # end
