module Api
  module V21
    class PluginsController < V2::PluginsController

      include Api::Version21
      # changes from V2

    end
  end
end
