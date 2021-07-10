module Resolvers
  class Me < GraphQL::Schema::Resolver
    def resolve
      context[:current_user]
    end
  end
end
