class UsersController < ApplicationController
  def  index
    users = User.all
    # render plain: "I'm in the index action!"
    render json: users
  end

  def show
    user = User.find(params[:id])
    render json: user 
  end

  def create
    user = User.new(user_params)
    # debugger
    if user.save
        render json: user 
    else  
        render json: user.errors.full_messages, status: 422 
    end
        
  end

  def update 
    user = User.find(params[:id])

     if user.update(user_params)
        redirect_to user_url(user) 
    else  
        render json: user.errors.full_messages, status: 422
    end

  end

  def destroy 
    user = User.find(params[:id])
    user.destroy
    redirect_to users_url 
  end

  protected
  def user_params
    params.require(:user).permit(:username)
  end

end