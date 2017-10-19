Rails.application.routes.draw do
  get 'sales/index'

  resources :plans
  resources :diaries 
  resources :hearts
  resources :chart
  resources :january
  resources :february
  resources :march
  resources :april
  resources :may
  resources :june
  resources :july
  resources :august
  resources :september
  resources :october
  resources :november
  resources :december
  get 'home/calendar'
  get 'home/main'
  #get 'home/calendar'

  #resources :hearts
  #get 'home/main'
  get 'home/menu' 
  get 'home/chart' 
  get 'home/january' 
  get 'home/february' 
  get 'home/march' 
  get 'home/april' 
  get 'home/may' 
  get 'home/june' 
  get 'home/july' 
  get 'home/august' 
  get 'home/september' 
  get 'home/october' 
  get 'home/november' 
  get 'home/december' 
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
