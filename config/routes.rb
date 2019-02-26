Rails.application.routes.draw do
  root "pages#home"
  get "songs/:id" => "songs#show" 

  devise_for :users

  resources :artists do
    resources :songs
  end

  resources :billboards
end
