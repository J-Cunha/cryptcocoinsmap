Rails.application.routes.draw do


  resources :address_attachments

  get 'dashboard/index', as: :dashboard_index

  get 'dashboard/addresses', as: :dashboard_addresses

  get 'dashboard/avaliations', as: :dashboard_avaliations

  get 'dashboard/contacts', as: :dashboard_contacts


  resources :donate_infos
  devise_for :users, :controllers => {sessions: 'users/sessions', registrations: 'users/registrations',  :omniauth_callbacks => 'users/omniauth_callbacks'}

  resources :addresses
  get 'welcome/index', as: :index
  get 'welcome/donate', as: :donate
  get 'welcome/report', as: :report
  root  'welcome#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
