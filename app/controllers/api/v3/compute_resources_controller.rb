module Api
  module V3
    class ComputeResourcesController < V2::ComputeResourcesController

      include Api::Version3

      def index
        super
        render :json => @compute_resources, :each_serializer => ComputeResourceSerializer
      end

      def show
        render :json => @compute_resource, :serializer => ComputeResourceSerializer
      end

    end
  end
end
