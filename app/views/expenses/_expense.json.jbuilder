json.extract! expense, :id, :project_id, :name, :description, :price_total, :total_paid, :total_dept, :date_pay, :status, :number_quota, :code, :scrapping, :created_at, :updated_at
json.url expense_url(expense, format: :json)
