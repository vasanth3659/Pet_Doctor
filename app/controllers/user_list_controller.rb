class UserListController < ApplicationController
  authorize_resource :class => false
 
  def index
  	@user = User.all
  end

  def new
    @user_list = User.new
  end

  def edit
  end
  
  def create
  	@user_list = User.new(user_params)
  	@user_list.practice = params[:user][:practice]
    respond_to do |format|
      if @user_list.save
      	User.find(@user_list.id).add_role params[:role].first
        format.html { redirect_to action: "index", notice: "Message" }
      else
        format.html { render action: "new" }
        format.json { render json: @user_list.errors, status: :unprocessable_entity }
      end
  	end
  end
  
  private
  def user_params
    params.require(:user).permit(:name, :email, :state, :zip , :city ,:address, :password, :salt, :encrypted_password)
  end
end