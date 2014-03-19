Bloccit::Application.routes.draw do
  
  devise_for :users
  resources :posts

  match "about", to: 'welcome#about', via: :get
  
  root 'welcome#index'
end
