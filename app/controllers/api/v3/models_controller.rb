module Api
  module V3
    class ModelsController < V2::ModelsController

      include Api::Version3

      def index
        super
        render :json => @models, :each_serializer => ModelSerializer
      end

      def show
        render :json => @model, :serializer => ModelSerializer
      end

    end
  end
end
