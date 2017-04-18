Rails.application.routes.draw do

  resources :inclusions

  root 'welcome#index'

end
