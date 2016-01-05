module Esa
  module Matome
    module Today
      class Param
        def initialize(params: , today: Date.today)
          query = "created:>=#{today}"
          params ||= {}
          params[:q] ||= ''
          params[:q] = [*params[:q].split(' '), query].join(' ')
          params[:per_page] = 100
          @params = params
        end

        def to_hash
          @params
        end
      end
    end
  end
end
