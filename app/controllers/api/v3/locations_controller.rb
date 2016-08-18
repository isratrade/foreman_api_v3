module Api
  module V3
    class LocationsController < V2::LocationsController

      include Api::Version3

      def index
        super
      rescue AbstractController::DoubleRenderError
        render :json => @locations, :each_serializer => LocationSerializer
      end

      def show
        render :json => @location, :serializer => LocationSerializer
      end

    end
  end
end
