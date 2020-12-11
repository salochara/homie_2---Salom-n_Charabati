class UsersController < ApplicationController
  def welcome
    #render json: User.first != nil ? User.first : "Empty DB", status: :ok

    render json: User.first, status: :ok
  end
end
