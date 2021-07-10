module Inputs
  class ExpenseInput < Types::BaseInputObject
    argument :name, String, required: true
    argument :project_id, Integer, required: true
    argument :description, String, required: true
    argument :price_total, Integer, required: true
    argument :total_paid, Integer, required: true
    argument :total_dept, Integer, required: true
    argument :date_pay, String, required: false
    argument :status, Integer, required: false
    argument :number_quota, Integer, required: false
    argument :code, String, required: false
    argument :scrapping, Boolean, required: false
  end
end
