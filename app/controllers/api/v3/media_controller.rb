module Api
  module V3
    class MediaController < V2::MediaController

      include Api::Version3

      def index
        super
        render :json => @media, :each_serializer => MediumSerializer
      end

      def show
        render :json => @media, :serializer => MediumSerializer
      end

    end
  end
end
