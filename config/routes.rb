Rails.application.routes.draw do
  get 'post/index'
  get 'post/new'
  get 'post/show'
  root 'post#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
