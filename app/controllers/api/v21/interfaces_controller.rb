module Api
  module V21
    class InterfacesController < V2::InterfacesController

      include Api::Version21

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
