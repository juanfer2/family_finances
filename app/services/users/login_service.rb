module Users
  class LoginService < ApplicationService
    attr_reader :login_attributes

    def initialize(login_attributes:)
      @login_attributes = login_attributes
    end

    def call
      login_user
    end

    def login_user
      user = User.find_by(email: login_attributes[:email])

      return user if user&.valid_password?(login_attributes[:password])
    end
  end
end
