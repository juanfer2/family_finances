module Mutations
  class CreateProject < BaseMutation
    argument :project_attributes, Inputs::ProjectInput, required: true, description: 'Send emails to partner contact'
    def resolve(project_attributes:)
      unless context[:current_user]
        raise GraphQL::ExecutionError.new('User do not exist')
      end

      user_create_service = Projects::CreateService.new(
        project_attributes: project_attributes.to_h,
        current_user: context[:current_user]
      )
      user_create_service.call

      OpenStruct.new(success: true)
    rescue ActiveRecord::RecordInvalid => e
      raise GraphQL::ExecutionError.new(e.record.errors.full_messages.join(', '))
    end
  end
end