class ApplicationController < ActionController::Base

    helper_method :current_user, :logged_in
    def current_user
    end

    def logged_in
    end

    def require_user
    end
end
