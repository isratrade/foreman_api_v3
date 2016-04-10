module Api
  module V3
    class CommonParametersController < V2::CommonParametersController

      include Api::Version3

      def index
        super
        render :json => @common_parameters, :each_serializer => ParameterSerializer
      end


      def show
        render :json => @common_parameter, :serializer => ParameterSerializer
      end

    end
  end
end
