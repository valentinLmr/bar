Rails.application.routes.draw do

  root to: 'pages#home'

  resources :restaurants do
    resources :tables
  end

  resources :tables do
    resources :commands
  end

  resources :menus do
    resources :appetizers
  end

  resources :commands do
    resources :dishescommands
  end


  devise_for :users
    # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

end
