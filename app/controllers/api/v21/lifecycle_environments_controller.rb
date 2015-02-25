module Api
  module V21
    class LifecycleEnvironmentsController < Api::V21::BaseController

      include Api::Version21

      def index
        @lifecycle_environments = ::Katello::KTEnvironment.all
        render :json => @lifecycle_environments, :each_serializer => LifecycleEnvironmentSerializer
      end

      def show
 #       render :json => @environment, :serializer => EnvironmentSerializer
      end

    end
  end
end
