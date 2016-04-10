module Api
  module V3
    class SmartVariablesController < V2::SmartVariablesController

      include Api::Version3

      def index
        super
        render :json => @smart_variables, :each_serializer => SmartVariableSerializer
      end

      def show
        render :json => @smart_variable, :serializer => SmartVariableSerializer
      end

    end
  end
end
