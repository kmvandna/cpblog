Rails.application.routes.draw do
  root "pages#index"
    
  resources :pages do
    resources :users
     namespace :api do
       namespace :v1 do
        resources :pages, only:(:index)
      end
    end
  end
end