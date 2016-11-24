require 'test_helper'
    include Devise::Test::ControllerHelpers
    
    test 'authenticated users can GET index' do
	    sign_in users(:bob)
	    get :index
	    assert_response :success
    end

class StoreControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

end
