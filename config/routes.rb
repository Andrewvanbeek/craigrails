Rails.application.routes.draw do

  root "categories#index"
  get "/secret/:key" => "articles#edit"
  resources :categories do
    resources :articles
  end

  # get "/categories/:id" => "categories#show"
  # get "/categories" => "categories#index"
  # get "/categories/:category_id/articles/:id" => "articles#show"
  # get "/categories/:category_id/articles/new" => "articles#new"
  # post "/categories/:category_id/articles" => "articles#create"
  # get "/categories/:category_id/articles/:id/edit" => "articles#edit"
  # patch "/categories/:category_id/articles/:id" => "articles#edit"
  # put "/categories/:category_id/articles/:id" => "articles#edit"
  # delete "/categories/:category_id/articles/:id" => "articles#destroy"

end

