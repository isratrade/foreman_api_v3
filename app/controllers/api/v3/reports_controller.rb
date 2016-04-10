module Api
  module V3
    class ReportsController < V2::ReportsController

      include Api::Version3
      # changes from V2

    end
  end
end
