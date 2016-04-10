module Api
  module V3
    class ArchitecturesController < V2::ArchitecturesController

      include Api::Version3

      def index
        super
        render :json => @architectures, :each_serializer => ArchitectureSerializer
      end

      def show
        render :json => @architecture, :serializer => ArchitectureSerializer
      end

    end
  end
end
