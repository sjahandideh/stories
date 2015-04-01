require 'rails_helper'

RSpec.describe Api::V1::BooksController, type: :controller do

  describe "GET #index" do
    it "returns json success" do
      get :index

      expect(response.status).to eql(200)
    end
  end

  describe "GET #show" do
    let(:joe) { User.create name: 'joe' }
    let(:book) { Book.create title: 'sample', description: 'sample book' }
    let(:chapter_one) { book.chapters.create title: 'chapter one', description: 'this is chapter one' }
    let(:rating_one) { chapter_one.ratings.create value: 3, user: 'joe' }

    it "returns json success" do
      get :show, id: book.id

      expect(response.status).to eql(200)
      dd = ActiveSupport::JSON.decode(response.body)
      #expect(dd).to eq( book.as_json.merge('chapters' => []) )
      expect(dd).to eq(
        { "id"          => book.id,
          "title"       => book.title,
          "icon_name"   => book.icon_name,
          "description" => book.description,
          "created_at"  => book.created_at.to_formatted_s,
          "updated_at"  => book.updated_at.to_formatted_s,
          "chapters"    => []}
      )
    end
  end

end
