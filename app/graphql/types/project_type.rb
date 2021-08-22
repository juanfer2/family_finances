module Types
  class ProjectType < Types::BaseObject
    field :id, ID, null: false, description: "The reservation's id"
    field :title, String, null: false, description: "The reservation's id"
    field :description, String, null: false, description: "The reservation's id"
    field :expenses, [Types::ExpenseType], null: true, description: "The reservation's id"
  end
end
