require 'test_helper'

class DisplayfeedControllerTest < ActionController::TestCase
  test "should get display" do
    get :display
    assert_response :success
  end

end
