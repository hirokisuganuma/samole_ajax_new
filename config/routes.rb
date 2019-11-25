Rails.application.routes.draw do
  resources :fruits do
    collection do
      get 'content'
    end
  end
end
