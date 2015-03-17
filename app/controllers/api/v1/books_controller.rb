class Api::V1::BooksController < ApplicationController

  def index
    books = Book.all

    render json: books.to_json
  end

  def show
    book = Book.find params[:id]

    #require 'github/markup'
    #GitHub::Markup.render(file, File.read())

    render json: book.to_json
  end
end
