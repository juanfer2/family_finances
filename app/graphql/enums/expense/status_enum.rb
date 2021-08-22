module Enums
  module Expense
    class StatusEnum < Types::BaseEnum
      value "PENDING", value: :pending
      value "CANCELED", value: :canceled
      value "FINISHED", value: :finished
    end
  end
end
