module Types
  class ExpenseType < Types::BaseObject
    field :id, ID, null: false, description: "The reservation's id"
    field :name, String, null: false, description: "The reservation's id"
    field :description, String, null: true, description: "The reservation's id"
    field :price_total, Float, null: true, description: "The expense total price"
    field :status, Enums::Expense::StatusEnum, null: true, description: "The status expense"
  end
end
