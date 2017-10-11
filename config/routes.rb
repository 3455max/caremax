Rails.application.routes.draw do
  resources :plans
  resources :diaries 
  resources :hearts
  get 'home/calendar'
  get 'home/main'
  get 'home/calendar'

  resources :hearts
  get 'home/main'
  get 'home/menu'  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
