require "application_system_test_case"

class ExcategoriesTest < ApplicationSystemTestCase
  setup do
    @excategory = excategories(:one)
  end

  test "visiting the index" do
    visit excategories_url
    assert_selector "h1", text: "Excategories"
  end

  test "creating a Excategory" do
    visit excategories_url
    click_on "New Excategory"

    fill_in "Desc", with: @excategory.desc
    fill_in "Name", with: @excategory.name
    click_on "Create Excategory"

    assert_text "Excategory was successfully created"
    click_on "Back"
  end

  test "updating a Excategory" do
    visit excategories_url
    click_on "Edit", match: :first

    fill_in "Desc", with: @excategory.desc
    fill_in "Name", with: @excategory.name
    click_on "Update Excategory"

    assert_text "Excategory was successfully updated"
    click_on "Back"
  end

  test "destroying a Excategory" do
    visit excategories_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Excategory was successfully destroyed"
  end
end
