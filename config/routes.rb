Rails.application.routes.draw do
  root 'html_pages#home'
  get '/help', to: 'html_pages#help'
  get '/contact', to: 'html_pages#contact'
  get '/about', to: 'html_pages#about'
  get 'signup', to: 'users#new'
end
