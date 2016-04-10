module Api
  module V3
    class ParametersController < V2::ParametersController

      include Api::Version3

      def index
        super
        render :json => @parameters, :each_serializer => ParameterSerializer
      end

      def show
        render :json => @parameter, :serializer => ParameterSerializer
      end

    end
  end
end
