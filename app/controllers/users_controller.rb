class UsersController < ApplicationController
  def new
      @user = User.new(name: "example", email: "example@example.com")
  end
    
    def create 
        @user = User.new(user_params)
        
        if @user.save
            
            flash[:notice] = "User '#{@user.name}' created successfully !"
            redirect_to(home_path)
        else
            flash[:error] = "User not created successfully, please follow as the form sais !"
            redirect_to(signup_path)
        end
    end
    
    private
    def user_params
        params.require(:user).permit(:name, :email, :password)
    end
end
