module Users
  class CreateService < ApplicationService
    attr_reader :user_attributes

    def initialize(user_attributes:)
      @user_attributes = user_attributes
    end

    def call
      create_user
    end

    def create_user
      user = User.new(user_attributes)

      user.save!
    end
  end
end
