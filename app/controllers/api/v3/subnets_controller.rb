module Api
  module V3
    class SubnetsController < V2::SubnetsController

      include Api::Version3

      def index
        super
        render :json => @subnets, :each_serializer => SubnetSerializer
      end

      def show
        render :json => @subnet, :serializer => SubnetSerializer
      end

    end
  end
end
