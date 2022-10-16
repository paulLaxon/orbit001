require 'test_helper'

class HtmlPagesControllerTest < ActionDispatch::IntegrationTest
  test 'gets home' do
    get html_pages_home_url
    assert_response :success
    assert_select 'title', 'Home | Orbit Feedback Application'
  end

  test 'gets help' do
    get html_pages_help_url
    assert_response :success
    assert_select 'title', 'Help | Orbit Feedback Application'
  end

  test 'gets about' do
    get html_pages_about_url
    assert_response :success
    assert_select 'title', 'About | Orbit Feedback Application'
  end
end
