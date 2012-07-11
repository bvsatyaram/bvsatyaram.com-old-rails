require 'test_helper'

class PagesControllerTest < ActionController::TestCase
  test "should get evitca_koala" do
    get :evitca_koala
    assert_response :success
  end

end
