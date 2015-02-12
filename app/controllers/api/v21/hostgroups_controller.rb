module Api
  module V21
    class HostgroupsController < V2::HostgroupsController

      include Api::Version21

      def index
        @hostgroups = Hostgroup.all
        render :json => @hostgroups, :each_serializer => HostgroupSerializer
      end

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
