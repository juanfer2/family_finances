module Types
  class MutationType < Types::BaseObject
    # TODO: remove me
    field :test_field, String, null: false,
      description: "An example field added by the generator"
    def test_field
      "Hello World"
    end

    field :register_user, SuccessfulMutationType, null: true, mutation: Mutations::RegisterUser
    field :create_project, SuccessfulMutationType, null: true, mutation: Mutations::CreateProject
    field :create_expense, SuccessfulMutationType, null: true, mutation: Mutations::CreateExpense
  end
end
