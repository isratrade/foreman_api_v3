module Api
  module V3
    class ModelsController < V2::ModelsController

      include Api::Version3

      def index
        super
        render :json => @models, :each_serializer => ModelSerializer
      end

      def show
      end

      # def create
      #   @model = Model.new(params[:model])
      #   process_response @model.save
      # end

      # def update
      #   process_response @model.update_attributes(params[:model])
      # end

      # def destroy
      #   process_response @model.destroy
      # end
    end
  end
end
