module Api
  module V3
    class HostClassesController < V2::HostClassesController

      include Api::Version3
      # changes from V2

    end
  end
end
