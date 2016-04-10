module Api
  module V3
    class AuditsController < V2::AuditsController

      include Api::Version3
      # changes from V2

    end
  end
end
