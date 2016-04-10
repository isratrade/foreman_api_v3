module Api
  module V3
    class StatisticsController < V2::StatisticsController

      include Api::Version3
      # changes from V2

    end
  end
end
