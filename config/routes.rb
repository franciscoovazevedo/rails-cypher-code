Rails.application.routes.draw do
  get '', to: 'cyphers#query'

  get 'about', to: 'cyphers#about'

  get 'encrypt', to: 'cyphers#encrypt'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
