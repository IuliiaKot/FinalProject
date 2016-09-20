require 'test_helper'

class TeachersControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get teachers_new_url
    assert_response :success
  end

  test "should get create" do
    get teachers_create_url
    assert_response :success
  end

end
