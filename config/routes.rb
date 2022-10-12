Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  root "foods#home"
  get "/foods", to: "foods#index", as: "foods"
  get "/foods/show/:id", to: "foods#show", as: "foods_show"
  get "/foods/new", to: "foods#new", as: "list_new_food"
  post "/foods", to: "foods#create"
  get "/foods/edit/:id", to: "foods#edit", as: "list_edit_food"
  patch "/foods/:id", to: "foods#update"
  delete "/foods/:id", to: "foods#destroy", as: "destroy_listed_food"
end
