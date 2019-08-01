class UsersController < ApplicationController
  def index
    users = User.all
    render json: users
  end

  def create
    user = User.new(params.require(:user).permit(:name, :email))
    user.save!
    if user.save
      render json: user
    else
      render json: user.errors.full_messages, status: :unprocessable_entity
    end
  end

  def show
    render json: params
  end

  def update
    user = User.find(params[:id])

    if user.update(user_params)
      render json: user 
    else
      render json: user.errors.full_messages, status: 422
    end
  end

  def destroy
    user = User.find(params[:id])
    users = User.all
    if !users.include?(user)
      render json: "User not found"
    else
      user.destroy
      render json: users
    end
  end

end