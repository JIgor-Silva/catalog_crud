require "test_helper"

class PeopleControllerTest < ActionDispatch::IntegrationTest
  setup do
    @person = people(:one)
    @person.create_address(street: "123 Test", city: "Testville", state: "TS", zp_code: "12345")
  end

  test "should get index" do
    get people_path(format: :html)  # Especificando formato HTML
    assert_response :success
  end

  test "should get show" do
    get person_path(@person, format: :html)
    assert_response :success
  end

  test "should get new" do
    get new_person_path(format: :html)
    assert_response :success
  end

  test "should get edit" do
    get edit_person_path(@person, format: :html)
    assert_response :success
  end
end
