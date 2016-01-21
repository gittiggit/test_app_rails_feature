Rails.application.routes.draw do

  resources :test_jqueries
  resources :tasks
  resources :experiments
  resources :departments

  get 'welcomes/about'

  root "welcomes#home"
  resources :categories, except: [:destroy]
  resources :articles
	resources :users, except:[:new] # because there is a named route for the user/new
  get "signup", to: "users#new"
	get "login", to: "sessions#new"
	post "login", to: "sessions#create"
	delete "signout", to: "sessions#destroy"

end
