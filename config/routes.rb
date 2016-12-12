Rails.application.routes.draw do
  resources :prospects do
    post "disposition"
    collection { post :import }
    resources :results, only: [:create, :edit, :update, :destroy]
  end
  
  devise_for :users
  root 'prospects#menu' 
  get "menu" => "prospects#menu"
  get "update_accessible" => "results#update_accessible"
  get 'edit_contacts/:id' => 'prospects#edit_contacts', as: :edit_contacts
end