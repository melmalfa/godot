HogwartsApp::Application.routes.draw do

root "welcome#index"


resources :houses, only: [:index, :show, :new, :create]
resources :students, only: [:index, :show, :new, :create]

end
