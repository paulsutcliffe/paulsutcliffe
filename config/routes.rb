Paulsutcliffe::Application.routes.draw do
  get 'gigs/feed(.:format)' => 'gigs#feed', :as => 'feed'
  
  resources :slides

  resources :scwidgets

  resources :gigs

  resources :metas

  root :to => "home#index"
end
