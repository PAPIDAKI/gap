Gap::Application.routes.draw do


  resources :maintenances
  resources :cultivations

  #get '',to: 'groups#show',constraints:{subdomain:/.+/}
  root "static_pages#home"
  get "static_pages/about"
  get "static_pages/contact_us"
  

  devise_for :users do
    resources :groups
  end


  resources :groups do
    resources :growers 
   end

   resources :growers do
    resources :pmus 
    resources :maintenances
    resources :cultivations
    resources :irrigations
   end


  resources :pmus do
#    resources :lines
  end

  resources :steps
  resources :procedures

  resources :roles
  resources :group_roles

  resources :clitems do
    collection{post :import}
    resources :instructions
  end


  resources :facilities

  
  resources :subs
  
  end