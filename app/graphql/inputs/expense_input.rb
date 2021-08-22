module Inputs
  class ExpenseInput < Types::BaseInputObject
    argument :name, String, required: true
    argument :project_id, Integer, required: true
    argument :description, String, required: false
    argument :price_total, Float, required: false
    argument :total_paid, Float, required: false
    argument :total_dept, Float, required: false
    argument :date_pay, String, required: false
    argument :status, Enums::Expense::StatusEnum, required: false
    argument :number_quota, Integer, required: false
    argument :code, String, required: false
    argument :scrapping, Boolean, required: false
  end
end
