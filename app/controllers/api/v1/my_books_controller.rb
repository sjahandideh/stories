class Api::V1::MyBooksController < ApplicationController

  def index
    render json: books
  end

  def new
    book = books.build

    render json: book
  end

  def create
    book = books.create params[:book]

    render json: book
  end

  private

  def books
    @books ||= current_user.books
  end

end
