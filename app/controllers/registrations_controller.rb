class RegistrationsController < Devise::RegistrationsController

    def index
    end
    
    def new
        @user= User.new 
    end
    
    def create
        @user =User.new(sign_up_params)
        if @user.save
            session[:user_id] = @user.id
            redirect_to user_steps_path
        else
            render :new
        end
    end
    


private

    def sign_up_params
        params.require(:user).permit(:name, :date, :bio, :twitter_usename, :github_username, :website, :email, :password)
    end

    def account_update_params
        params.require(:user).permit(:name, :date, :bio, :twitter_usename, :github_username, :website, :email, :password)
    end

end