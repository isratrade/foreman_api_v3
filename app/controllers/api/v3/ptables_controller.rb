module Api
  module V3
    class PtablesController < V2::PtablesController

      include Api::Version3

      def index
        super
        render :json => @ptables, :each_serializer => PtableSerializer
      end

      def show
        render :json => @ptable, :serializer => PtableSerializer
      end

    end
  end

end
