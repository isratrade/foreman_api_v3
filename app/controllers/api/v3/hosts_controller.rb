module Api
  module V3
    class HostsController < V2::HostsController

      include Api::Version3

      def index
        super
        @hosts = @hosts.where(:id => params[:id]) if params[:id].present?
        render :json => @hosts, :each_serializer => HostBaseSerializer
      end

      def show
        render :json => @host, :serializer => HostBaseSerializer
      end

    end
  end
end

