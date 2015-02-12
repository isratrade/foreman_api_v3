module Api
  module V21
    class HomeController < V21::BaseController
      before_filter :require_admin
      layout false

      api :GET, "/", N_("Show available API links")

      def index
        # we need to load apipie documentation to show all the links.
        Apipie.reload_documentation if Apipie.configuration.reload_controllers?
      end

      api :GET, "/status/", N_("Show status")

      def status
      end
    end
  end
end

