require 'rails_helper'

RSpec.describe "NotionBlocks", type: :request do
  describe "GET /index" do
    it "returns http success" do
      get "/notion_block/index"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /create" do
    it "returns http success" do
      get "/notion_block/create"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /destroy" do
    it "returns http success" do
      get "/notion_block/destroy"
      expect(response).to have_http_status(:success)
    end
  end

end
