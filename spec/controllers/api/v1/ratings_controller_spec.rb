require 'rails_helper'

RSpec.describe Api::V1::RatingsController, type: :controller do

  describe "GET #index" do
    let(:lucy) { User.create name: 'lucy' }
    let(:joe) { User.create name: 'joe' }

    let(:book) { Book.create title: 'sample', description: 'sample book' }
    let(:chapter_one) { book.chapters.create title: 'chapter one', body: 'this is chapter one' }
    let!(:rating_joe) { chapter_one.ratings.create value: 3, user: joe }
    let!(:rating_lucy) { chapter_one.ratings.create value: 4, user: lucy }

    it "returns json success" do
      get :index, { book_id: book.id }, { user_id: joe.id }

      expect(response.status).to eql(200)
      expect(response.body).to eq([rating_joe].to_json)
    end
  end

end
