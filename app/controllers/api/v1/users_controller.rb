class Api::V1::UsersController < ApplicationController

  def show
    user = User.last

    render json: user
  end

end
