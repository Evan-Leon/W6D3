class UsersController < ApplicationController
  def  index
    users = User.all
    # render plain: "I'm in the index action!"
    render json: users
  end

  def show
    
  end

end