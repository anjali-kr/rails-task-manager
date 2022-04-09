Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: 'tasks#index'
  # As a user, I can list tasks
  get 'tasks', to: 'tasks#index'
  # As a user, I can add a new task
  # One route is there to display the Task form, and
  # the other is there to handle the POST request generated when submitting this form
  get 'tasks/new', to: 'tasks#new'
  post 'tasks', to: 'tasks#create'
  # As a user, I can view the details of a task
  get 'tasks/:id', to: 'tasks#show', as: 'task'
end
