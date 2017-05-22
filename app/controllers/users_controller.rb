class UsersController < ApplicationController
  def index
    users = User.all
    render json: users
  end

  def create
    user = User.new(user_params)
  # replace the `user_attributes_here` with the actual attribute keys
    if user.save
      render json: user
    else
      render(
        json: user.errors.full_messages, status: :unprocessable_entity
        )
    end
  end

  def show
    user = User.find(params[:id])
    render json: user
  end

  def update
    user = User.find(params[:id])
    user.update!(user_params)
    render json: user
  end

  def destroy
    user = User.find_by_id(params[:id])
    if user
      user.destroy
      render text: "User Deleted! fuck that guy!"
    else
      render text: "User does not exist"
    end
  end

  private

  def user_params
    params[:user].permit(:user_name)
  end
end
