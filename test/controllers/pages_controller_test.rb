require 'test_helper'

class PagesControllerTest < ActionDispatch::IntegrationTest

  # test "the truth" do
  #   assert true
  # end

  test "should get home" do
    get pages_home_url
    assert_response :success
  end


end
