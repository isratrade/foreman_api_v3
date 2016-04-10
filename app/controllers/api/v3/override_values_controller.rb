module Api
  module V3
    class OverrideValuesController < V2::OverrideValuesController

      include Api::Version3
      # changes from V2

    end
  end
end
