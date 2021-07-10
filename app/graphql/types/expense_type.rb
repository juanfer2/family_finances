module Types
  class ExpenseType < Types::BaseObject
    field :id, ID, null: false, description: "The reservation's id"
    field :name, String, null: false, description: "The reservation's id"
    field :description, String, null: false, description: "The reservation's id"
  end
end
