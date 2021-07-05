module Inputs
  class UserInput < Types::BaseInputObject
    argument :email, String, required: true
    argument :first_name, String, required: true
    argument :last_name, String, required: true
    argument :password, String, required: true
    argument :password_confirmation, String, required: true
  end
end
