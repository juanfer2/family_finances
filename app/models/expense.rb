class Expense < ApplicationRecord
  belongs_to :project

  enum status: [:canceled, :pending, :finished]
end
