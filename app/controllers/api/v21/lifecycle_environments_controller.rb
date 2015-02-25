module Api
  module V21
    class LifecycleEnvironmentsController < Api::V21::BaseController

      include Api::Version21

      before_filter :find_organization, :only => [:index, :create, :show, :update, :destroy]
      before_filter :find_lifecycle_environment, :only => [:show, :update, :destroy]

      def index
        @lifecycle_environments = ::Katello::KTEnvironment.readable.where(:organization_id => @organization.id)
        render :json => @lifecycle_environments, :each_serializer => LifecycleEnvironmentSerializer
      end

      def show
        render :json => @lifecycle_environment, :serializer => LifecycleEnvironmentSerializer
      end

      private

      def find_organization
        @organization = ::Organization.find_by_id(params[:organization_id])
        return @organization if @organization
        return :json => {:error => "Couldn't find organization" }
      end

      def find_lifecycle_environment
        @lifecycle_environment = ::Katello::KTEnvironment.find_by_id(params[:id])
        return @lifecycle_environment if @lifecycle_environment
        return :json => {:error => "Couldn't find lifecycle environment" }
      end

    end
  end
end
