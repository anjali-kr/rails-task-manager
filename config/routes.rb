Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: 'tasks#index'
  # As a user, I can list tasks
  get 'tasks', to: 'tasks#index'
  # As a user, I can view the details of a task
  get 'tasks/:id', to: 'tasks#show', as: 'task'
end
