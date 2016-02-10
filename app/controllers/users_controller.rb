class UsersController < ApplicationController
     before_action :authenticate_user!
     
      def index
        @users = User.includes(:exercises)
      end
     
    def show
        @user = User.find( params[:id] )
        @exercises = @user.exercises.all
    end
end
