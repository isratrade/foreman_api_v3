module Api
  module V3
    class UsergroupsController < V2::UsergroupsController

      include Api::Version3

      def index
        super
        render :json => @usergroups, :each_serializer => UsergroupSerializer
      end

      def show
        render :json => @usergroup, :serializer => UsergroupSerializer
      end

    end
  end
end
