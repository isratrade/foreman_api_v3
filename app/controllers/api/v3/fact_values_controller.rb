module Api
  module V3
    class FactValuesController < V2::FactValuesController

      include Api::Version3
      # changes from V2

    end
  end
end
