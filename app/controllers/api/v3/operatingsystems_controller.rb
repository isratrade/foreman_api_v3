module Api
  module V3
    class OperatingsystemsController < V2::OperatingsystemsController

      include Api::Version3

      def index
        super
        render json: @operatingsystems,
               fields: @fields_hash,
               include: @include_array,
               each_serializer: OperatingsystemSerializer
      end

      def show
        super
        render json: @operatingsystem,
               fields: @fields_hash,
               include: @include_array,
               serializer: OperatingsystemSerializer
      end

    end
  end
end
