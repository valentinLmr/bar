Rails.application.routes.draw do

  root to: 'pages#home'
    get '/dashboard', to: 'profiles#dashboard'


  resources :restaurants do
    resources :tables
  end
   resources :restaurants do
    resources :menus
  end

  resources :tables do
    resources :commands
  end

  resources :menus do
    resources :drinks
  end

  resources :commands do
    resources :dishescommands
  end


  devise_for :users
    # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

end


  # resources :restaurants do
  #   resources :tables do
  #     resources :commands do
  #       resources :dishescommands
  #     end
  #   end
  # end


  #  resources :restaurants do
  #   resources :menus do
  #     resources :drinks
  #   end
  # end
