module Api
  module V21
    class DomainsController < V2::DomainsController

      include Api::Version21

      def index
        super
        render :json => @domains, :each_serializer => DomainSerializer
      end

      def show
        render :json => @domain, :serializer => DomainSerializer
      end

    end
  end
end
