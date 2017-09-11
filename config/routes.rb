Rails.application.routes.draw do

  devise_for :users, :controllers => {sessions: 'users/sessions', registrations: 'users/registrations',  :omniauth_callbacks => 'users/omniauth_callbacks'}

  resources :addresses
  get 'welcome/index', as: :index
  get 'welcome/donate', as: :donate
  get 'welcome/report', as: :report
  root  'welcome#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
