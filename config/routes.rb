ActionController::Routing::Routes.draw do |map|
  map.pages 'pages/:permalink', :controller => 'pages', :action => 'show'
  map.resources :pages
  map.namespace :admin do |admin|
      admin.resources :pages
  end
end
