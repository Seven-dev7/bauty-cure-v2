Rails.application.routes.draw do
  resources :products, path: 'Produits', only: %i(index show) do
    post 'add_to_cart'
  end
  devise_for :users, path: 'myUser'
  resources :users do
    resources :user_informations, only: %i(show edit)
    resources :carts, only: %i(show) do
      resources :cart_products, only: [:destroy]
    end
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'static_pages#landing_page'
end
