class Api::V1::RatingsController < ApplicationController

  #def index
    #render json: ratings
  #end

  def show
    r = rating || chapter.ratings.create(user_id: current_user.id, value: 0)
    render json: r
  end

  def update
    rating.update_attributes value: params[:rating][:value]

    render json: rating
  end

  private

  def rating
    @rating ||= chapter.ratings.by_user(session[:user_id]).last
  end

  def chapter
    @chapter ||= Chapter.find params[:chapter_id]
  end

end
