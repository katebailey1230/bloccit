Rails.application.routes.draw do
  
    


    resources :posts, :advertisements, :question

   get 'about' => 'welcome#about'
    
 root 'welcome#index'
    



    
end
