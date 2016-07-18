Rails.application.routes.draw do
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'

  # root to: "static_pages#root"

  namespace :api, defaults: { format: :json } do
    resources :users, only: [:show, :create, :index]
    resources :tweets, only: [:show, :create, :destroy, :update, :index]
  end
end
