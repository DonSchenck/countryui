Rails.application.routes.draw do
  root 'welcome#index'
  get '/list', to: 'list#index'
end
