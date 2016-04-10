module Api
  module V3
    class AutosignController < V2::AutosignController

      include Api::Version3
      # changes from V2

    end
  end
end
