require "application_system_test_case"

class ExpensesTest < ApplicationSystemTestCase
  setup do
    @expense = expenses(:one)
  end

  test "visiting the index" do
    visit expenses_url
    assert_selector "h1", text: "Expenses"
  end

  test "creating a Expense" do
    visit expenses_url
    click_on "New Expense"

    fill_in "Code", with: @expense.code
    fill_in "Date pay", with: @expense.date_pay
    fill_in "Description", with: @expense.description
    fill_in "Name", with: @expense.name
    fill_in "Number quota", with: @expense.number_quota
    fill_in "Price total", with: @expense.price_total
    fill_in "Project", with: @expense.project_id
    check "Scrapping" if @expense.scrapping
    fill_in "Status", with: @expense.status
    fill_in "Total dept", with: @expense.total_dept
    fill_in "Total paid", with: @expense.total_paid
    click_on "Create Expense"

    assert_text "Expense was successfully created"
    click_on "Back"
  end

  test "updating a Expense" do
    visit expenses_url
    click_on "Edit", match: :first

    fill_in "Code", with: @expense.code
    fill_in "Date pay", with: @expense.date_pay
    fill_in "Description", with: @expense.description
    fill_in "Name", with: @expense.name
    fill_in "Number quota", with: @expense.number_quota
    fill_in "Price total", with: @expense.price_total
    fill_in "Project", with: @expense.project_id
    check "Scrapping" if @expense.scrapping
    fill_in "Status", with: @expense.status
    fill_in "Total dept", with: @expense.total_dept
    fill_in "Total paid", with: @expense.total_paid
    click_on "Update Expense"

    assert_text "Expense was successfully updated"
    click_on "Back"
  end

  test "destroying a Expense" do
    visit expenses_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Expense was successfully destroyed"
  end
end
