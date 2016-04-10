module Api
  module V3
    class ConfigGroupsController < V2::ConfigGroupsController

      include Api::Version3

      def index
        super
        render :json => @config_groups, :each_serializer => ConfigGroupSerializer
      end

      def show
        render :json => @config_group, :serializer => ConfigGroupSerializer
      end

    end
  end
end
