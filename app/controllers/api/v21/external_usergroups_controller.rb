module Api
  module V21
    class ExternalUsergroupsController < V2::ExternalUsergroupsController

      include Api::Version21

      def index
        super
        render :json => @external_usergroups, :each_serializer => UsergroupSerializer
      end

      def show
        render :json => @external_usergroups, :serializer => UsergroupSerializer
      end

    end
  end
end

