Rails.application.routes.draw do
  # #get 'lists/all'
  # #get 'lists/show'
  # #get 'lists/create'
  # #get 'lists/new'
  # # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # # Defines the root path route ("/")
  # # root "articles#index"

  # get "lists", to: "lists#index"
  # get "lists/new", to: "lists#new"
  # get "lists/:id", to: "lists#show"
  # post "lists", to: "lists#create"


  # post "lists/list_id/bookmarks", to: "bookmarks#create"
  # get "lists/list_id/bookmarks/new", to: "bookmarks#new#"
  # get "lists/list_id/bookmarks/destroy", to: "bookmarks#destroy"

  # # post "bookmarks", to: "bookmarks#create"
  # # get "bookmarks/new", to: "bookmarks#new#"
  # # get "bookmarks/destroy", to: "bookmarks#destroy"

  # #get "movies/:movie_id/:list_id/name", to: "list#all"
  # #post "movies/:id/name", to: "reviews#create"
  # #get "list/new", to: "list#new"
  root to: 'lists#index'
  resources :lists, except: [:edit, :update] do
   resources :bookmarks, only: [:new, :create]
  end
  resources :bookmarks, only: :destroy



end
