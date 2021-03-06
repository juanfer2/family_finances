Rails.application.routes.draw do
  resources :expenses
  resources :project_users
  resources :projects
  #if Rails.env.development?
  #  mount GraphiQL::Rails::Engine, at: "/graphiql", graphql_path: "/graphql"
  #end
  post "/api/v1/graphql", to: "graphql#execute"
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
