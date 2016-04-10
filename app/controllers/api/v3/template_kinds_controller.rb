module Api
  module V3
    class TemplateKindsController < V2::TemplateKindsController

      include Api::Version3
      # changes from V2

    end
  end
end
