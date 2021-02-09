# frozen_string_literal: true

Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  # Read All
  get 'tasks', to: 'tasks#index'

  # Create
  # Get the form
  get 'tasks/new', to: 'tasks#new', as: :new_task
  # Post the form
  post 'tasks', to: 'tasks#create'

  # Read One
  get 'tasks/:id', to: 'tasks#show', as: :task

  # Update
  # Get the form
  get 'tasks/:id/edit', to: 'tasks#edit', as: :edit_task
  # PATCH the form
  patch 'tasks/:id', to: 'tasks#update'

  # Delete
  delete 'tasks/:id', to: 'tasks#destroy'
end
