Rails.application.routes.draw do
  resources :prospects do
    collection { post :import }
  end

  devise_for :users
  root 'prospects#index'
  get 'edit_contacts/:id' => 'prospects#edit_contacts', as: :edit_contacts
end