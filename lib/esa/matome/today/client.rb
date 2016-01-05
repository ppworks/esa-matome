module Esa
  module Matome
    module Today
      class Client
        attr_reader :esa_client, :today

        def initialize(access_token: nil, api_endpoint: nil, current_team: nil, today: Date.today)
          @today = today.strftime('%Y-%m-%d')
          @esa_client = Esa::Client.new(access_token: access_token, api_endpoint: api_endpoint, current_team: current_team)
        end

        def posts(params = nil, headers = nil)
          @esa_client.posts(Esa::Matome::Today::Param.new(params: params, today: @today).to_hash, headers)
        end
      end
    end
  end
end
