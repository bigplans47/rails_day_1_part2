Rails.application.routes.draw do
  resources :courses do
    resources :tasks
  end
end
