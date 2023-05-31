Rails.application.routes.draw do
  root 'post#index'
  get  '/new',   to: "post#new"
  get  '/show',  to: "post#show"

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
