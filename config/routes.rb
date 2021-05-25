Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # root '/'
  resources :tv_shows, only: [:show] do
    resources :seasons, only: %i[index show]
  end
  resources :seasons, only: [] do
    resources :episodes, only: %i[index show]
  end
end
