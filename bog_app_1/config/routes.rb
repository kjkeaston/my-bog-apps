Rails.application.routes.draw do
  root "creatures#index" #=> basically localhost:3000
  # same as => 
  # get "/", to: "creatures#index"

  get "/creatures", to: "creatures#index", as: "creatures" # localhost:3000/creatures

  get "creatures/new", to: "creatures#new", as: "new_creature" # localhost:3000/creatures/new

  post "/creatures", to: "creatures#create" # localhost:3000/creatures

  get "/creatures/:id", to: "creatures#show", as: "creature"

  get "/creatures/:id/edit", to: "creatures#edit", as: "edit_creature"

  patch "/creatures/:id", to: "creatures#update" 

  delete "/creatures/:id", to: "creatures#destroy"

end
