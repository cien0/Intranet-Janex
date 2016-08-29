Rails.application.routes.draw do
  root 'home#index'
  devise_for :users
  get 'home/new'
  get 'home/create'
  get 'home/about'
  get 'home/contact'
  get 'home/faq'
  resources :konwersja_kont
  get 'konwersja_kont/index'
  get 'konwersja_kont/:id' => 'konwersja_kont#view'
  
end
