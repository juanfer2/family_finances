module Inputs
  class ProjectInput < Types::BaseInputObject
    argument :title, String, required: true
    argument :description, String, required: false
  end
end
