Rails.application.routes.draw do
  resources :prospects do
    post "disposition"
    collection { post :import }
    resources :results, only: [:create, :edit, :update, :destroy]
  end
  
  get "menu" => "prospects#menu"
  get "update_accessible" => "results#update_accessible"

  devise_for :users
  root 'prospects#index'
  get 'edit_contacts/:id' => 'prospects#edit_contacts', as: :edit_contacts
end