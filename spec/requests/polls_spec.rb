require 'rails_helper'

RSpec.describe "Polls", type: :request do
  describe "GET /index" do
    it "returns http success" do
      get "/polls/index"
      expect(response).to have_http_status(:success)
    end
  end

end
