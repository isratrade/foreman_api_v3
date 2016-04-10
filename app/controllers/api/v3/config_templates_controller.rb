module Api
  module V3
    class ConfigTemplatesController < V2::ConfigTemplatesController

      include Api::Version3

      def index
        super
        render :json => @config_templates, :each_serializer => ConfigTemplateSerializer
      end

      def show
        render :json => @config_template, :serializer => ConfigTemplateSerializer
      end

    end
  end
end
