Gap::Application.routes.draw do




  
  resources :growers do
     resources :events
     get 'events/evcults'=>"events#index" ,scope:"evcults"
     get 'events/evferts'=>"events#index" ,scope:'evferts'
     get 'events/evphytos'=>"events#index" ,scope: 'evphytos'

     
     resources :evcults,controller:'events',type:'Evcult'
     resources :evphytos,controller:'events',type:'Evphyto'
     resources :evferts,controller:'events',type: 'Evfert'



    resources :logentries
    resources :pmus 
    
   end




  resources :groups do
    resources :growers do
      resources :pmus
      
      get 'events/evcults'=>"events#index" ,scope:"evcults"
      get 'events/evferts'=>"events#index" ,scope:'evferts'
      get 'events/evphytos'=>"events#index" ,scope: 'evphytos'
      resources :events

     

    end
   end 
  
   resources :events
      get 'groups/growers/events/evcults'=>"events#index" ,scope:"evcults"
      get 'events/evferts'=>"events#index" ,scope:'evferts'
      get 'events/evphytos'=>"events#index" ,scope: 'evphytos'

  


  

  resources :growers do
    get 'events/evcults'=>"events#index" ,scope:"evcults"
    get 'events/evferts'=>"events#index" ,scope:'evferts'
    get 'events/evphytos'=>"events#index" ,scope: 'evphytos'
  end

  resources :events
  resources :evcults,controller:'events',type:'Evcult'
  resources :evphytos,controller:'events',type:'Evphyto'
  resources :evferts,controller:'events',type: 'Evfert'


  #get '',to: 'groups#show',constraints:{subdomain:/.+/}
  root "static_pages#home"
  get "static_pages/about"
  get "static_pages/contact_us"
  

  devise_for :users do
    resources :groups
  end


  
     get 'events/evcults'=>"events#index" ,scope:"evcults"
     get 'events/evferts'=>"events#index" ,scope:'evferts'
     get 'events/evphytos'=>"events#index" ,scope: 'evphytos'
     resources :evcults,controller:'events',type:'Evcult'
     resources :evphytos,controller:'events',type:'Evphyto'
     resources :evferts,controller:'events',type: 'Evfert'
     resources :events






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