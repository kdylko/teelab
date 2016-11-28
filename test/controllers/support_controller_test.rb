require 'test_helper'

class SupportControllerTest < ActionController::TestCase
  test "should get aboutus" do
    get :aboutus
    assert_response :success
  end

  test "should get help" do
    get :help
    assert_response :success
  end

  test "should get contact" do
    get :contact
    assert_response :success
  end

  test "should get offer" do
    get :offer
    assert_response :success
  end

end
