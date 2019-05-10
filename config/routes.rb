Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
# Create
get 'tasks/new', to: 'tasks#new', as: 'new'
post "tasks", to: "tasks#create", as: 'create'


# Read
get 'tasks', to: 'tasks#index'
get 'tasks/:id', to: 'tasks#show', as: 'task'
# Update
get "tasks/:id/edit", to: "tasks#edit", as: 'edit'
patch "tasks/:id", to: "tasks#update", as: 'update'


# Delete
delete "tasks/:id", to: "tasks#destroy"
end
