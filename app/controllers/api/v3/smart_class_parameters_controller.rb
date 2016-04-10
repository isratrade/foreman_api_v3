module Api
  module V3
    class SmartClassParametersController < V2::SmartClassParametersController

      include Api::Version3

      def index
        super
        render :json => @smart_class_parameters, :each_serializer => SmartClassParameterSerializer
      end

      def show
        render :json => @smart_class_parameter, :serializer => SmartClassParameterSerializer
      end

    end
  end
end
