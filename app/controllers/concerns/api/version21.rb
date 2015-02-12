module Api
  module Version21
    extend ActiveSupport::Concern

    def api_version
      '21'
    end

  end
end