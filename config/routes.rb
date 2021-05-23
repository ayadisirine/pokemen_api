Rails.application.routes.draw do
  resources :pokemen do
    resources :pokemen
  end
end
