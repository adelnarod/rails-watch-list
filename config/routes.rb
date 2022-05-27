Rails.application.routes.draw do
  root to: "lists#index"
  resources :lists, only: %i[show create new] do
    resources :bookmarks, only: %i[new create index]
  end
  resources :bookmarks, only: %i[destroy]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
