Bloccit::Application.routes.draw do
  
  devise_for :users
  resources :users, only: [:update]
  
  resources :topics do
    resources :posts, except: [:index] do 
      resources :comments, only: [:create] #New Comment checkpoint
    end
  end

  #resources :posts do
  #  resources :comments, only: [:create] #New Comment checkpoint
  #end


  match "about", to: 'welcome#about', via: :get
  
  root 'welcome#index'
end
