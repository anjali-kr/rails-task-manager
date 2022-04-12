Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: 'tasks#index'
  # READ - As a user, I can list tasks
  get 'tasks', to: 'tasks#index'
  # CREATE - As a user, I can add a new task
  # One route is there to display the Task form, and
  # the other is there to handle the POST request generated when submitting this form
  get 'tasks/new', to: 'tasks#new'
  post 'tasks', to: 'tasks#create'

  # UPDATE As a user, I can edit a task
  get 'tasks/:id/edit', to: 'tasks#edit', as: 'edit_task'
  patch 'tasks/:id', to: 'tasks#update'

  # DELETE As a user, I can remove a task
  delete 'tasks/:id', to: 'tasks#destroy', as: 'delete_task'

  # As a user, I can view the details of a task
  get 'tasks/:id', to: 'tasks#show', as: 'task'
end
