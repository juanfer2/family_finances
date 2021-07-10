module Resolvers
  class Login < GraphQL::Schema::Resolver
    argument :email, String, required: true
    argument :password, String, required: true

    def resolve(email:, password:)
      login_user = Users::LoginService.new(login_attributes: {email: email,
        password: password})
      user = login_user.call

      unless user
        raise GraphQL::ExecutionError.new('Email or password invalid')
      end

      user
    end
  end
end
