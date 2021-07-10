module Mutations
  class CreateExpense < BaseMutation
    #authorize_user

    argument :expense_attributes, Inputs::ExpenseInput, required: true, description: 'Send emails to partner contact'
    def resolve(expense_attributes:)

      Expenses::CreateService.call(
        expense_attributes: expense_attributes.to_h,
        current_user: context[:current_user]
      )

      OpenStruct.new(success: true)
    rescue ActiveRecord::RecordInvalid => e
      raise GraphQL::ExecutionError.new(e.record.errors.full_messages.join(', '))
    end
  end
end
