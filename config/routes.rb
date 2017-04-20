Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'user/index' => 'user#index'
  get '/' => 'user#index'
  get 'comment/index/:id' => 'comment#index', as:'link_comments'
  get'comment/show/:id' => 'comment#show', as: 'photo_comments'
  get 'photo/index/:id' => 'photo#index', as:'user_photos'
  get 'photo/index/:id' => 'photo#index', as:'link_photos'

  end
