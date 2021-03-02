class UsersController < ApplicationController  

    def form 
        @user = User.new
    end    

    def index  
        @users = User.all 
    end    

    def create
        @user = User.new(name: params['name'], email: params['email'])
        if @user.save
            redirect_to index_path
        else 
            render 'form'
        end    
    end 
    
    def edit
        @user = req_params
    end             

    def update
        @user = User.new(name: params['name'], email: params['email'])
        @user.save
        redirect_to index_path
    end   
    
    def delete
        req_params.delete
        redirect_to index_path
    end        

    private
    def req_params
        User.find(params[:id])
    end    
end
