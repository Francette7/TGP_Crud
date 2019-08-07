require 'test_helper'

class GossipsControllerTest < ActionDispatch::IntegrationTest
  test "should get gossip" do
    get gossips_gossip_url
    assert_response :success
  end

end
