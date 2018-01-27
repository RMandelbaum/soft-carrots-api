Rails.application.routes.draw do
  namespace :api do
    resources :jokes, except: [:new, :edit] do
      resources :comments, except: [:new, :edit]
    end
  end
end
