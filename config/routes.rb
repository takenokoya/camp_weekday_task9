Rails.application.routes.draw do
  get 'tasks/hide' => 'tasks#hide'
  resources :tasks
  root 'tasks#index'
end
