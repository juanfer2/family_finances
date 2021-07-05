module Types
  class QueryType < Types::BaseObject
    # Add `node(id: ID!) and `nodes(ids: [ID!]!)`
    include GraphQL::Types::Relay::HasNodeField
    include GraphQL::Types::Relay::HasNodesField

    # Add root-level fields here.
    # They will be entry points for queries on your schema.

    # TODO: remove me
    field :test_field, String, null: false,
      description: "An example field added by the generator"
    def test_field
      "Hello World!"
    end

    field :login, UserType, null: false, description: "An example field added by the generator" do
      argument :email, String, required: true
      argument :password, String, required: true
    end
    def login(email:, password:)
      login_user = Users::LoginService.new(login_attributes: {email: email, 
        password: password})
      user = login_user.call

      unless user 
        raise GraphQL::ExecutionError.new('Email or password invalid')
      end

      user
    end

    field :me, UserType, null: false, description: "An example field added by the generator"
    def me
      
    end
  end
end
