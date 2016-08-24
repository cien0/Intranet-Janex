Rails.application.routes.draw do
  root 'home#index'
  devise_for :users
  get 'home/new'
  get 'home/create'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'home/about'
  get 'home/contact'
  get 'home/faq'
  resources :konwersja_kont
  get 'konwersja_kont/index'
  get 'konwersja_kont/:id' => 'konwersja_kont#view'
end
