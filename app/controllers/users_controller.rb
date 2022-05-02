class UsersController < ApplicationController
    before_action :set_user, only: [:edit, :update, :show]
    before_action :require_same_user, only: [:edit, :update]
    def new
        @user = User.new 
    end

    def index
        @users = User.all
    end 

    def create
        @user = User.new(user_params)
        if @user.save
            flash[:success] = 'Success #{user.username}'
            redirect_to articles_path

        else
            render 'new'
        end
    end

        def edit
            
        end

        def update
          
            if @user.update(user_params)
                flash[:success] = 'USEr updated success '
            else
                render 'edit'
            end
        end

        def show
           
        end
    


    private 
    def user_params
        params.require(:user).permit(:username, :email, :password)
    end

    def set_user
        @user = User.find(params[:id])
    end

    def require_same_user
    end
end