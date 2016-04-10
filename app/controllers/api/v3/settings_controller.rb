module Api
  module V3
    class SettingsController < V2::SettingsController

      include Api::Version3
      # changes from V2

    end
  end
end
