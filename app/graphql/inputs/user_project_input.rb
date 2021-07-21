module Inputs
  class UserProjectInput < Types::BaseInputObject
    argument :project_id, Integer, required: true
    argument :user_ids, [Integer], required: false
  end
end
