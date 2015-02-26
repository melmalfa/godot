Rails.application.routes.draw do

  root "welcome#index"
  resources :quiz, only: [:new]

end
