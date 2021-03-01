class UsersController < ApplicationController  

    def form 
    end    

    def index  
        @users = User.all 
    end    

    def create
        @user = User.create(name: params['name'], email: params['email'])
        redirect_to '/users/index'
    end    

end
