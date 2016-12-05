Rails.application.routes.draw do

  get "/categories" => "categories#index"
  get "/categories/:id" => "categories#show"
  get "/categories/:category_id/articles/:id" => "articles#show"
  get "/categories/:category_id/articles/new" => "articles#new"
  post "/categories/:category_id/articles" => "articles#create"
  get "/categories/:category_id/articles/:id/edit" => "articles#edit"
  patch "/categories/:category_id/articles/:id" => "articles#edit"
  put "/categories/:category_id/articles/:id" => "articles#edit"
  delete "/categories/:category_id/articles/:id" => "articles#destroy"
end

