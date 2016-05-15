module Api
  module V3
    class HostgroupsController < V2::HostgroupsController

      include Api::Version3

      api :GET, "/hostgroups/", N_("List all host groups")

      def index
        @hostgroups = Hostgroup.all
        render :json => @hostgroups, :include => 'domain', :each_serializer => HostgroupSerializer
      end

      api :GET, "/hostgroups/:id/", N_("Show a host group")
      param :id, :identifier, :required => true

      def show
        render :json => @hostgroup, :serializer => HostgroupSerializer
      end

      def create
        @hostgroup = Hostgroup.new(params[:hostgroup])
        @hostgroup.save
        if @hostgroup.save
          render :json => @hostgroup, :serializer => HostgroupSerializer
        else
          render json: {errors: @hostgroup.errors}, status: 422
        end
      end

    end
  end
end
