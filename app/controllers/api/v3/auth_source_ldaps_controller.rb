module Api
  module V3
    class AuthSourceLdapsController < V2::AuthSourceLdapsController

      include Api::Version3
      # changes from V2

    end
  end
end
