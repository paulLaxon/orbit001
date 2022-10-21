require 'test_helper'

class HtmlPagesControllerTest < ActionDispatch::IntegrationTest
  test 'gets home' do
    get root_path
    assert_response :success
    assert_select 'title', 'Home | Orbit Feedback Application'
  end

  test 'gets help' do
    get help_path
    assert_response :success
    assert_select 'title', 'Help | Orbit Feedback Application'
  end

  test 'gets about' do
    get about_path
    assert_response :success
    assert_select 'title', 'About | Orbit Feedback Application'
  end

  test 'gets contact' do
    get contact_path
    assert_response :success
    assert_select 'title', 'Contact | Orbit Feedback Application'
  end
end
