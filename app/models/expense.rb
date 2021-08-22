class Expense < ApplicationRecord
  belongs_to :project

  enum status: [:pending, :canceled, :finished]
end
