module Api
  module V3
    class RolesController < V2::RolesController

      include Api::Version3

      def index
        super
        render :json => @roles, :each_serializer => RoleSerializer
      end

      def show
        render :json => @role, :serializer => RoleSerializer
      end

    end
  end
end
