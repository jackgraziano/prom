Rails.application.routes.draw do
  resources :clients
  resources :dresses
  resources :colors

  root 'pages#root'
end
