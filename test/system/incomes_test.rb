require "application_system_test_case"

class IncomesTest < ApplicationSystemTestCase
  setup do
    @income = incomes(:one)
  end

  test "visiting the index" do
    visit incomes_url
    assert_selector "h1", text: "Incomes"
  end

  test "creating a Income" do
    visit incomes_url
    click_on "New Income"

    fill_in "Create date", with: @income.create_date
    fill_in "Desc", with: @income.desc
    fill_in "Incategory", with: @income.incategory_id
    fill_in "Name", with: @income.name
    fill_in "Price", with: @income.price
    fill_in "Upd date", with: @income.upd_date
    click_on "Create Income"

    assert_text "Income was successfully created"
    click_on "Back"
  end

  test "updating a Income" do
    visit incomes_url
    click_on "Edit", match: :first

    fill_in "Create date", with: @income.create_date
    fill_in "Desc", with: @income.desc
    fill_in "Incategory", with: @income.incategory_id
    fill_in "Name", with: @income.name
    fill_in "Price", with: @income.price
    fill_in "Upd date", with: @income.upd_date
    click_on "Update Income"

    assert_text "Income was successfully updated"
    click_on "Back"
  end

  test "destroying a Income" do
    visit incomes_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Income was successfully destroyed"
  end
end
