module Api
  module V3
    class ComputeProfilesController < V2::ComputeProfilesController

      include Api::Version3

      def index
        super
        render :json => @compute_profiles, :each_serializer => ComputeProfileSerializer
      end

      def show
        render :json => @compute_profile, :serializer => ComputeProfileSerializer
      end

    end
  end
end


