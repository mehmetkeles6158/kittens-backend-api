Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  get "/kittens" => "kittens#index"
  get "/kittens/:id" =>"kittens#show"
  post "/kittens" =>"kittens#create"
  patch "/kittens/:id" =>"kittens#update"
  

  
end
