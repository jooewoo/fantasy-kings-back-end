# frozen_string_literal: true

Rails.application.routes.draw do
  resources :teams
  # RESTful routes
  resources :examples, except: %i[new edit]
  resources :players, except: %i[new edit]
  resources :all_players, except: %i[new edit]
  resources :stats, except: %i[new edit]

  # Custom routes
  post '/sign-up' => 'users#signup'
  post '/sign-in' => 'users#signin'
  delete '/sign-out' => 'users#signout'
  patch '/change-password' => 'users#changepw'
end
