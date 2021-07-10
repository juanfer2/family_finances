module Resolvers
  class Projects < GraphQL::Schema::Resolver
    def resolve
      current_user = context[:current_user]
      current_user.projects
    end
  end
end
