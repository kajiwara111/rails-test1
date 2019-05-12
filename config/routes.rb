Rails.application.routes.draw do
  root to: 'contacts#new'
  resources :contacts
end
