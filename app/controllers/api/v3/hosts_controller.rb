module Api
  module V3
    class HostsController < V2::HostsController

      def index
        super
        render :json => @hosts, :each_serializer => HostSerializer
      end

      def show
        render :json => @hosts, :serializer => HostSerializer
      end

    end
  end
end

