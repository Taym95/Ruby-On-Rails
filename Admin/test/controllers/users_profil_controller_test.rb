require 'test_helper'

class UsersProfilControllerTest < ActionController::TestCase
  test "should get profil" do
    get :profil
    assert_response :success
  end

end
