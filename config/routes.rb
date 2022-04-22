Rails.application.routes.draw do
  root "countries#index"
  get 'countries/new'
  get 'countries/create'
  get 'countries/update'
  get 'countries/edit'
  get 'countries/destroy'
  get 'countries/index'
  get 'countries/show'

end
