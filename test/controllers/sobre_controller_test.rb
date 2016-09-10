require 'test_helper'

class SobreControllerTest < ActionDispatch::IntegrationTest
  test "should get sobre" do
    get sobre_sobre_url
    assert_response :success
  end

end
