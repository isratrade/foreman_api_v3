module Api
  module V3
    class OperatingsystemsController < V2::OperatingsystemsController

      include Api::Version3

      def index
        super
        render :json => @operatingsystems, :each_serializer => OperatingsystemSerializer
      end

      def show
        render :json => @operatingsystems, :serializer => OperatingsystemSerializer
      end

    end
  end
end
