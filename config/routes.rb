# Rails.application.routes.draw do

#   root to: "restaurants#index"
#   resources :restaurants do
#     resources :reviews, only: [ :new, :create ]
#   end
# end
Rails.application.routes.draw do
  resources :restaurants do
    resources :reviews, only: [ :index, :new, :create ]
  end
  resources :reviews, only: [ :show, :edit, :update, :destroy ]
end
