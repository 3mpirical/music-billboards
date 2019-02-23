Rails.application.routes.draw do
  root "pages#home"
  get "songs/:id" => "songs#show" 

  resources :artists do
    resources :songs
  end

  resources :billboards
end
