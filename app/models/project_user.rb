class ProjectUser < ApplicationRecord
  belongs_to :project
  belongs_to :user
  has_many :expenses, dependent: :destroy, inverse_of: :project_user
  accepts_nested_attributes_for :expenses
  has_many :project_users, dependent: :destroy, inverse_of: :project_user
  accepts_nested_attributes_for :project_users
  has_many :users, through: :project_users
end
