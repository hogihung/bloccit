Bloccit::Application.routes.draw do
  
  resources :posts

  match "about", to: 'welcome#about', via: :get
  
  root 'welcome#index'
end
