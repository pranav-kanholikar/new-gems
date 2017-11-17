class UserStepsController < ApplicationController
    include Wicked::Wizard
    steps :personal, :social

    def show 
        @user = current_user
        render_wizard
      end


      def update 
        @user = current_user
        @user.update_attributes(account_update_params)
        render_wizard @user
      end

      def account_update_params
        params.require(:user).permit(:name, :date, :bio, :twitter_usename, :github_username, :website, :email, :password)
    end
end
