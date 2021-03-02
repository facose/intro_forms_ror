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
        @user = User.find(params[:id])
    end             

    def update
        User.update(name: params['name'], email: params['email']) 
        redirect_to index_path
    end   
    
    def delete
        User.find(params[:id]).delete
        redirect_to index_path
    end        

end
