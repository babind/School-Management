Rails.application.routes.draw do
  devise_for :users
  get 'home/index'
root to: "home#index"

resources :schools

post 'schools/get_states', :as =>'get_states'

post 'schools/get_cities' , :as =>'get_cities'

get '/schools/:id/get_users', to: 'schools#get_users', as: 'school_users'


  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
