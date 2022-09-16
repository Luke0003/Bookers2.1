Rails.application.routes.draw do
  get 'books/index'
  get 'books/show'
  get 'books/creath'
  get 'books/edit'
  get 'books/update'
  get 'books/destroy'
  get 'homes/top'
  get 'homes/about'
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
