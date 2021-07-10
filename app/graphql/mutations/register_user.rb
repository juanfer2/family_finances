module Mutations
  class RegisterUser < BaseMutation
    argument :user_attributes, Inputs::UserInput, required: true, description: 'Send emails to partner contact'
    def resolve(user_attributes:)
      Users::CreateService.call(user_attributes: user_attributes.to_h)

      #def authenticate_user_from_token!
      #  email = params[:email].presence
      #  user  = email && User.find_by(email: email)
    #
      #  sign_in user if user && Devise.secure_compare(user.authentication_token, params[:auth_token])
      #end

      OpenStruct.new(success: true)
    rescue ActiveRecord::RecordInvalid => e
      raise GraphQL::ExecutionError.new(e.record.errors.full_messages.join(', '))
    end
  end
end
