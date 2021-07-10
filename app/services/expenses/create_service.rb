module Expenses
  class CreateService < ApplicationService
    attr_reader :expense_attributes, :current_user

    def initialize(expense_attributes:, current_user: nil)
      @expense_attributes = expense_attributes
      @current_user = current_user
    end

    def call
      create_expense
    end

    def create_expense
      expense = Expense.new(expense_attributes)

      expense.save!
    end
  end
end
