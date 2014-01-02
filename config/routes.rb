Gap::Application.routes.draw do
  #resources :lines

  resources :subs

  root "static_pages#home"
  get "static_pages/about"
  get "static_pages/contact_us"
  devise_for :users
  #root "groups#index"
  # get "groups"=>"groups#index"
  # get "groups/:id"=>"groups#show",as:"group"
  # get "groups/:id/edit"=>"groups#edit",as:"edit_group"
  # patch "groups/:id"=>"groups#update"
  
  resources :groups do
    resources :growers 
   end

   resources :growers do
    resources :pmus 
  end


  resources :pmus do
    resources :lines
    resources :fertilizers
    resources :irrigation
  end

   

  end