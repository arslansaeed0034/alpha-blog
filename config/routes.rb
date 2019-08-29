Rails.application.routes.draw do
  devise_for :user_admins
  devise_for :users_models
  get 'welcome/home',to:'welcome#index'
  get 'welcome/about', to: 'welcome#about'

  get  'signup', to: 'users#new'
  resources :users,except:[:new]

  get 'login',to: 'sessions#new'
  post 'login',to: 'sessions#create'
  delete 'logout',to: 'sessions#destroy'


 
  resources :articles 
  #   member do
  #     get :preview
  #   end
  # end



  
  resources :categories do
   member do
      get :preview
    end
  end
 root 'welcome#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
