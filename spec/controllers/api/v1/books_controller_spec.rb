require 'rails_helper'

RSpec.describe Api::V1::BooksController, type: :controller do

  describe "GET #index" do
    it "returns json success" do
      get :index

      expect(response.status).to eql(200)
    end
  end

end
