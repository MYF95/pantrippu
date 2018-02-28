require 'test_helper'

class StaticPagesControllerTest < ActionDispatch::IntegrationTest
  test "should get route" do
    get root_url
    assert_response :success
  end

  test "should get home" do
    get static_pages_home_url
    assert_response :success
    assert_select "title", "Pantrippu"
  end

  test "should get help" do
    get static_pages_help_url
    assert_response :success
    assert_select "title", "Help | Pantrippu"
  end

  test "should get about" do
    get static_pages_about_url
    assert_response :success
    assert_select "title", "About | Pantrippu"
  end

end
