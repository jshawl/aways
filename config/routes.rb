Rails.application.routes.draw do
  root 'users#index'
  get 'auth/twitter/callback' => 'users#auth'
end
