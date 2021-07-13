Rails.application.routes.draw do
  resources :posts
  resources :subcategories do 
    resources :posts
  end 
  resources :categories do 
      resources :posts
  end 
  resources :categories do 
    resources :subcategories
end 

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
