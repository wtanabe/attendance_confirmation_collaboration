Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/', to: 'attend_bord#index'
  get 'create', to: 'create_attend_bord#index'
  post 'create/new', to: 'create_attend_bord#new'
end
