require 'rails_helper'

RSpec.describe Api::V1::BooksController, type: :controller do

  describe "GET #index" do
    it "returns json success" do
      get :index

      expect(response.status).to eql(200)
    end
  end

  describe "GET #show" do
    let(:book) { Book.create title: 'sample', description: 'sample book' }

    it "returns json success" do
      get :show, id: book.id

      expect(response.status).to eql(200)
      #expect(response.body).to eq(book.to_json)
    end
  end

end
