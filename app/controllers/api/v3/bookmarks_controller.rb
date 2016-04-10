module Api
  module V3
    class BookmarksController < V2::BookmarksController

      include Api::Version3
      # changes from V2

    end
  end
end




