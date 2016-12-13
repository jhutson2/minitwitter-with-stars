Rails.application.routes.draw do

  resources :tweets do
    member do
      get :upvote
    end
  end
  root "tweets#new"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
