module Projects
  class CreateService < ApplicationService
    attr_reader :project_attributes, :current_user

    def initialize(project_attributes:, current_user:)
      @project_attributes = project_attributes
      @current_user = current_user
    end

    def call
      ActiveRecord::Base.transaction do
        create_project
      end
    end

    def create_project
      project = Project.new(project_attributes)

      create_project_user(project) if project.save!
    end

    def create_project_user(project)
      project_user = ProjectUser.new(
        project_id: project.id,
        user_id: current_user.id
      )

      project_user.save!
    end
  end
end
