module Api
  module V3
    class ImagesController < V2::ImagesController

      include Api::Version3

      def index
        super
        render :json => @images, :each_serializer => ImageSerializer
      end

      def show
        render :json => @image, :serializer => ImageSerializer
      end

    end
  end
end
