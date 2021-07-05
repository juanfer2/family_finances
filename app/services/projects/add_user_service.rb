module Projects
  class AddUsersService < ApplicationService
    attr_reader :user_ids, :project_id

    def initialize(project_users_attributes:, current_user:)
      @user_ids = project_users_attributes[:user_ids]
      @project_id = project_users_attributes[:project_id]
    end

    def call
      ActiveRecord::Base.transaction do
        add_users
      end
    end

    def add_users
      user_ids.map do |user_id|
        project_user = ProjectUser.new(
          project_id: project_id,
          user_id: user_id
        )

        project_user.save!
      end
    end
  end
end
