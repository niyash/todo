Rails.application.routes.draw do
    root "home#index"
    resources :lists

    resources :list do
  resources :task
end
end
