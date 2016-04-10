module Api
  module V3
    class EnvironmentsController < V2::EnvironmentsController

      include Api::Version3

      def index
        super
        render :json => @environments, :each_serializer => EnvironmentSerializer
      end

      def show
        render :json => @environment, :serializer => EnvironmentSerializer
      end

    end
  end
end
