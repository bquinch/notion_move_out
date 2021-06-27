require "rails_helper"

RSpec.describe "NotionBlocks", type: :request do
  describe "GET /" do
    it "returns http success" do
      get "/"
      expect(response).to have_http_status(:success)
    end

    pending "mock notion api call + init blocks (params[:init_blocks]"
  end

end
