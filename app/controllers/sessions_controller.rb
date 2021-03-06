class SessionsController < ApplicationController
    def new
    end

    def create
        user = User.find_by(email: params[:session][:email].downcase)
        if user && user.authenticate(params[:session][:password])
            session[:user_id] = user.id
            flash[:success] = 'You have successfully log in'
            redirect_to user_path(user)
        else
            render 'new'
            flash.now[:danger] = 'There was an error'
        end
    end

    def destroy
        session[:user_id] = nil
        flash[:success] = 'you have successfully loged out'
        redirect_to root_path
    end
end 