class Project < ApplicationRecord
  has_many :expenses, dependent: :destroy, inverse_of: :project
end
