Rails.application.routes.draw do
  root "pages#index"

   resources :pages do
     resources :comments
    end
end
