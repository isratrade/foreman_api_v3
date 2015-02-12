module Api
  module V21
    class HostsController < V2::HostsController

      include Api::Version21

      def index
        super
        render :json => @hosts, :each_serializer => HostSerializer
      end

      def show
        render :json => @host, :serializer => HostSerializer
      end

    end
  end
end

