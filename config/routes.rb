Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'prospects#index'
  resources :prospects
  get 'edit_contacts/:id' => 'prospects#edit_contacts', as: :edit_contacts
end