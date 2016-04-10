module Api
  module V3
    class InterfacesController < V2::InterfacesController

      include Api::Version3

      def index
        super
        render :json => @interfaces, :each_serializer => InterfaceSerializer
      end

      def show
        render :json => @interface, :serializer => InterfaceSerializer
      end

    end
  end
end
