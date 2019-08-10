class UsersController < ApplicationController
  def new
   @user = User.new
  end

  def create
    @user = User.new(user_params)
    @user.email.downcase!
    if @user.save
      flash[:norice] = "Votre compte a été créé avec succés"
      redirect_to user_path(@user.id)
    else
      flash.now.alert = "Oops, il y une erreur dans votre authentification, veuillez réessayer"
      render :new
    end
  end

  def show
    @user = User.find(params[:id])
  end


private
  def user_params
    params.require(:user).permit(:first_name, :email, :password, :password_confirmation)
    
  end

end
