class UsersController < ApplicationController
    before_action :authenticate_user!, only: [:show]
    before_action :require_admin, only: [:control_panel]

    def show
        @user = User.find(params[:id])
        @stories = @user.stories.all
    end

    def control_panel
        @users = User.all
    end
end