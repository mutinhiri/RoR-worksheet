class UsersController < ApplicationController
    before_action :set_user, only: [:edit, :update, :show]
    before_action :require_same_user, only: [:edit, :update, :destroy]
    before_action :require_admin, only: [:destroy]
    def new
        @user = User.new 
    end

    def index
        @users = User.all
    end 

    def create
        @user = User.new(user_params)
        if @user.save
            session[:user_id] = @user.id
            flash[:success] = 'Success #{user.username}'
            redirect_to user_path(@user)

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

        def destroy
            @user = User.find(params[:id])
            @user.destroy
            flash[:danger] = "user and all articles have been deleted "
            redirect_to users_path
        end
    


    private 
    def user_params
        params.require(:user).permit(:username, :email, :password)
    end

    def set_user
        @user = User.find(params[:id])
    end

    def require_same_user
        if current_user != @user and !current_user.admin
            flash[:danger] = "Restriction access"
            redirect_to root_path
        end
    end

    def require_admin
        if logged_in? and !current_user.admin?
            flash[:danger] = "only admin can perform this op"
        end
    end
end