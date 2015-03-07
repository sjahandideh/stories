class Api::V1::BooksController < ApplicationController

  def index
    render json: { message: 'testing' }, status: :ok
  end

end
