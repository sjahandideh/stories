class Api::V1::RatingsController < ApplicationController

  def index
    binding.pry
    render json: ratings
  end

  def update
    binding.pry
    rating = ratings.find id: params[:id]

    render json: rating
  end

  private

  def ratings
    rateable.ratings.by_user session[:user_id]
  end

  def rateable
    klass = [Book, Chapter].detect{|c| params["#{c.name.underscore}_id"]}
    klass.find(params["#{klass.name.underscore}_id"])
  end

end
