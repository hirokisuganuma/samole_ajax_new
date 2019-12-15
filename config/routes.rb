Rails.application.routes.draw do
  root :to => 'fruits#index'
  resources :fruits do
    collection do
      get 'content'
    end
  end
  resources :vegetables
  post  '/vegetables/ajax_communication' , to: 'vegetables#ajax_communication',as:'ajax_communication'
end
