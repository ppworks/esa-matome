require 'test_helper'

class Esa::Matome::Today::ClientTest < Minitest::Test
  def test_posts
    esa_client = mock('Esa::Client')
    esa_client.expects(:posts)
    Esa::Client.stubs(:new).returns(esa_client)

    access_token = 'hoge'
    current_team = 'team'

    client = Esa::Matome::Today::Client.new(access_token: access_token, current_team: current_team)
    client.posts
  end
end
