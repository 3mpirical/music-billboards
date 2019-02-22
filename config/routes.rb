Rails.application.routes.draw do
  get 'pages/home'
  get 'billboards/index'
  get 'billboards/show'
  get 'billboards/edit'
  get 'billboards/new'
  get 'artists/index'
  get 'artists/show'
  get 'artists/edit'
  get 'artists/new'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
