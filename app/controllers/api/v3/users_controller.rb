module Api
  module V3
    class UsersController < V2::UsersController

      include Api::Version3

      def index
        super
        render :json => @users, :each_serializer => UserSerializer
      end

      def show
        render :json => @user, :serializer => UserSerializer
      end

    end
  end
end
