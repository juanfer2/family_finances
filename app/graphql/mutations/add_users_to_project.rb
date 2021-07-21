module Mutations
  class CreateProject < BaseMutation
    argument :project_users_attributes, Inputs::UserProjectInput, required: true, description: 'Send emails to partner contact'
    def resolve(project_attributes:)
      unless context[:current_user]
        raise GraphQL::ExecutionError.new('User do not exist')
      end

      Projects::CreateService.call(project_attributes: project_attributes.to_h,
        current_user: context[:current_user])

      OpenStruct.new(success: true)
    rescue ActiveRecord::RecordInvalid => e
      raise GraphQL::ExecutionError.new(e.record.errors.full_messages.join(', '))
    end
  end
end
