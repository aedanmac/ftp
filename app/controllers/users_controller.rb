class UsersController < ApplicationController
before_action :authenticate_user!

	def index
		@users = User.all
	end

	def edit
        @user = User.find(params[:id])
    end

    def update
        @user = User.find(params[:id])
            @user.update_attributes(user_params)
                redirect_to all_users_path
    end

    def delete
        @user = User.find(params[:id])
            @user.destroy

            redirect_to all_users_path

    end

    private

    def user_params
        params.require(:user).permit(:approved, :admin)
    end


end