Rails.application.routes.draw do

  resources :inclusions do
    resources :comments
  end

  root 'welcome#index'

end
