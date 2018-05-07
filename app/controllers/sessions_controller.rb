class SessionsController < ApplicationController 

    def new 
    end 

    def create 
        @user = User.find(params["id"])

        if @user and @user.authenticate(params["password"])
            session["user_id"]
    end 

    def destroy 
    end
end