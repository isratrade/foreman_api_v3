module Api
  module V21
    class FactValuesController < V2::FactValuesController

      include Api::Version21
      # changes from V2

    end
  end
end
