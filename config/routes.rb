Rails.application.routes.draw do
  resources :minds
  resources :plans
  resources :diaries 
  resources :hearts
  get 'home/calendar'
  get 'home/main'
  get 'home/calendar'
  get 'home/menu'  
  get 'home/select'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
