Rails.application.routes.draw do
  post 'sign_up', to: 'sessions#create'
  get 'sign_in', to: 'sessions#new'
  delete 'sign_out', to: 'sessions#destroy'


  get 'page/index'
  root 'page#index'

  resources :users do
    collection do
      get :sign_in, to: redirect('sign_in')
    end
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
