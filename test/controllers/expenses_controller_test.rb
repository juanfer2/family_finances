require "test_helper"

class ExpensesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @expense = expenses(:one)
  end

  test "should get index" do
    get expenses_url
    assert_response :success
  end

  test "should get new" do
    get new_expense_url
    assert_response :success
  end

  test "should create expense" do
    assert_difference('Expense.count') do
      post expenses_url, params: { expense: { code: @expense.code, date_pay: @expense.date_pay, description: @expense.description, name: @expense.name, number_quota: @expense.number_quota, price_total: @expense.price_total, project_id: @expense.project_id, scrapping: @expense.scrapping, status: @expense.status, total_dept: @expense.total_dept, total_paid: @expense.total_paid } }
    end

    assert_redirected_to expense_url(Expense.last)
  end

  test "should show expense" do
    get expense_url(@expense)
    assert_response :success
  end

  test "should get edit" do
    get edit_expense_url(@expense)
    assert_response :success
  end

  test "should update expense" do
    patch expense_url(@expense), params: { expense: { code: @expense.code, date_pay: @expense.date_pay, description: @expense.description, name: @expense.name, number_quota: @expense.number_quota, price_total: @expense.price_total, project_id: @expense.project_id, scrapping: @expense.scrapping, status: @expense.status, total_dept: @expense.total_dept, total_paid: @expense.total_paid } }
    assert_redirected_to expense_url(@expense)
  end

  test "should destroy expense" do
    assert_difference('Expense.count', -1) do
      delete expense_url(@expense)
    end

    assert_redirected_to expenses_url
  end
end
