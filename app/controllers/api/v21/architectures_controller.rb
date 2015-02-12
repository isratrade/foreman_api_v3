module Api
  module V21
    class ArchitecturesController < V2::ArchitecturesController

      include Api::Version21

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
