class SessionsController < ApplicationController

    def new
        user = User.new
    end

    def create
        if !params[:name] || params[:name].empty?
            redirect_to login_path
        else
            session[:name] = params[:name]
            redirect_to root_path
        end
    end

    def destroy
        session.clear
        redirect_to root_path
    end
end