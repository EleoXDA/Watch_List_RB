Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  resources :movies, only: %i[show index] do # add show and index
    # nested routes for bookmarks
  end

  # resources :lists, only: %i[show index new create] do # add show index new create
  # nested routes for bookmarks
  # resources :bookmarks, only: %i[new create] # add new create
  # end
end

# root to: 'tasks#index'
#   get 'tasks', to: 'tasks#index', as: :tasks
#   post 'tasks', to: 'tasks#create'
#   get 'tasks/new', to: 'tasks#new', as: :new_task
#   get 'tasks/:id', to: 'tasks#show', as: :task
#   patch 'tasks/:id', to: 'tasks#update'
#   get 'tasks/:id/edit', to: 'tasks#edit', as: :edit_task
#   delete 'tasks/:id', to: 'tasks#destroy'
