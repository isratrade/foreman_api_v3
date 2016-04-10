module Api
  module V3
    class PermissionsController < V2::PermissionsController

      include Api::Version3
      # changes from V2

    end
  end
end
