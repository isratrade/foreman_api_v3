module Api
  module V3
    class HostgroupsController < V2::HostgroupsController

      include Api::Version3

      def index
        super
        render :json => @hostgroups, :each_serializer => HostgroupSerializer
      end

      def show
        render :json => @hostgroups, :serializer => HostgroupSerializer
      end

    end
  end
end
