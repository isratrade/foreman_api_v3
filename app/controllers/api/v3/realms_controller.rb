module Api
  module V3
    class RealmsController < V2::RealmsController

      include Api::Version3

      def index
        super
        render :json => @realms, :each_serializer => RealmSerializer
      end

      def show
        render :json => @realm, :serializer => RealmSerializer
      end

    end
  end
end
