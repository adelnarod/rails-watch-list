Rails.application.routes.draw do
  resources :lists, only: %i[index show create new] do
    resources :bookmarks, only: %i[new create index]
  end
  resources :bookmarks, only: %i[destroy]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
