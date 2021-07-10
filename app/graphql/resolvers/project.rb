module Resolvers
  class Project < GraphQL::Schema::Resolver
    argument :id, Integer, required: true

    def resolve(id:)
      current_user = context[:current_user]
      current_user.projects.find(id)
    end
  end
end
