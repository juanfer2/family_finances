module Resolvers
  class ExpensesByProject < GraphQL::Schema::Resolver
    argument :id, Integer, required: true

    def resolve(id:)
      Expense.where(project_id: id)
    end
  end
end
