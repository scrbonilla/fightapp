class SessionController < ApplicationController
    def new
    end

    def create
        user = User.find_by_email(params[:user_name])
        if user && user.authenticate(params[:password])
            session[:user_id] = user.id
            redirect_to root_url, notice: "logged in!"
        else
            flash.now.alert = "Email or Password is invalid"
            render "new"
        end
    end

    def destroy
    end
end
