require 'test_helper'

class GithubProfilesControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

  # test "should get create" do
  #   post :create
  #   assert_response :success
  # end

end
