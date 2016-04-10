module Api
  module V3
    class DashboardController < V2::DashboardController

      include Api::Version3
      # changes from V2

    end
  end
end
