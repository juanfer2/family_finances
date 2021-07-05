module Types
  class UserType < Types::BaseObject
    field :id, ID, null: false, description: "The reservation's id"
    field :email, String, null: false, description: "The reservation's id"
    field :first_name, String, null: false, description: "The reservation's id"
    field :last_name, String, null: false, description: "The reservation's id"
    field :authentication_token, String, null: false, description: "The reservation's id"
  end
end
