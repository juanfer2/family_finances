class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :token_authenticatable

  has_many :project_users, dependent: :destroy, inverse_of: :user
  accepts_nested_attributes_for :project_users
  has_many :projects, through: :project_users
end
