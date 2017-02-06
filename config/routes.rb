Rails.application.routes.draw do
  resources :advertisements 
    get 'about' => 'welcome#about'
    
 root 'welcome#index'
    resources :posts

   get 'about' => 'welcome#about'
    
 root 'welcome#index'
    



    
end
