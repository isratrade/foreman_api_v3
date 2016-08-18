module Api
  module V3
    class SmartProxiesController < V2::SmartProxiesController

      include Api::Version3

      def index
        super
        render :json => @smart_proxies, :each_serializer => SmartProxySerializer
      end

      def show
        render :json => @smart_proxy, :serializer => SmartProxySerializer
      end

    end
  end
end
