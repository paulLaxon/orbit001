require 'test_helper'

class UsersControllerTest < ActionDispatch::IntegrationTest
  test 'gets new' do
    get signup_path
    assert_response :success
  end
end
