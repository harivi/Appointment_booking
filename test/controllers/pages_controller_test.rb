require "test_helper"

class PagesControllerTest < ActionDispatch::IntegrationTest
  test "should get home" do
    get pages_home_url
    assert_response :success
  end

  test "should get review" do
    get pages_review_url
    assert_response :success
  end

  test "should get confirmation" do
    get pages_confirmation_url
    assert_response :success
  end
end
