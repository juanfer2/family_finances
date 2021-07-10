module Types
  class QueryType < Types::BaseObject
    # Add `node(id: ID!) and `nodes(ids: [ID!]!)`
    include GraphQL::Types::Relay::HasNodeField
    include GraphQL::Types::Relay::HasNodesField

    field :healt, String, null: false, resolver: Resolvers::Healt
    field :login, UserType, null: true, resolver: Resolvers::Login
    field :me, Types::UserType, null: true, resolver: Resolvers::Me
    field :project, Types::ProjectType, null: true, resolver: Resolvers::Project
    field :projects, [Types::ProjectType], null: true, resolver: Resolvers::Projects
    field :expenses_by_project, [Types::ExpenseType], null: true, resolver: Resolvers::ExpensesByProject
  end
end
