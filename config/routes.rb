Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  # Create tasks
  get "tasks/new", to: "tasks#new", as: :new_task
  post "tasks", to: "tasks#create"


  # See all tasks
  get 'tasks', to: 'tasks#index'

  # See details about one specific task
  get "tasks/:id", to: "tasks#show", as: :task

  # Update a task
  get "tasks/:id/edit", to: "tasks#edit", as: :edit_task
  patch "tasks/:id", to: "tasks#update"

  # Remove task
   delete "tasks/:id", to: "tasks#destroy"
end
