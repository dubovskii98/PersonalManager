require 'test_helper'

class ExcategoriesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @excategory = excategories(:one)
  end

  test "should get index" do
    get excategories_url
    assert_response :success
  end

  test "should get new" do
    get new_excategory_url
    assert_response :success
  end

  test "should create excategory" do
    assert_difference('Excategory.count') do
      post excategories_url, params: { excategory: { desc: @excategory.desc, name: @excategory.name } }
    end

    assert_redirected_to excategory_url(Excategory.last)
  end

  test "should show excategory" do
    get excategory_url(@excategory)
    assert_response :success
  end

  test "should get edit" do
    get edit_excategory_url(@excategory)
    assert_response :success
  end

  test "should update excategory" do
    patch excategory_url(@excategory), params: { excategory: { desc: @excategory.desc, name: @excategory.name } }
    assert_redirected_to excategory_url(@excategory)
  end

  test "should destroy excategory" do
    assert_difference('Excategory.count', -1) do
      delete excategory_url(@excategory)
    end

    assert_redirected_to excategories_url
  end
end
