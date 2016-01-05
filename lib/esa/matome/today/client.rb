module Esa
  module Matome
    module Today
      class Client
        def initialize(access_token: nil, api_endpoint: nil, current_team: nil, today: Date.today)
          @today = today
          @client = Esa::Client.new(access_token: access_token, api_endpoint: api_endpoint, current_team: current_team)
        end

        def posts(params = nil, headers = nil)
          @client.posts(Esa::Matome::Today::Param.new(params: params, today: @today), headers)
        end
      end
    end
  end
end
