class SessionsController < ApplicationController
    skip_before_action :authenticated,  only: [:new, :create]

    def new 
        
    end

    def create 
        # byebug
        @user = User.find_by(user_name:params[:user_name])

        if @user.authenticate(params[:password])
            session[:user_id] = @user.id 
            redirect_to @user
        else 
            flash[:error] = @user.errors.full_messages 
            redirect_to '/login'
        end

    end

    def destroy 
        session.delete(:user_id)
        redirect_to '/login'
    end
end