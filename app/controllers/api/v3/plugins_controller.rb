module Api
  module V3
    class PluginsController < V2::PluginsController

      include Api::Version3
      # changes from V2

    end
  end
end
