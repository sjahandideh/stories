class Api::V1::BooksController < ApplicationController

  def index
    books = Book.all

    render json: books
  end

  def show
    book = Book.find params[:id]

    render json: book.as_json(include: { chapters: { include: 'rating' } })
  end

end
