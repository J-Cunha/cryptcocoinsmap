require 'rails_helper'

RSpec.describe "DonateInfos", type: :request do
  describe "GET /donate_infos" do
    it "works! (now write some real specs)" do
      get donate_infos_path
      expect(response).to have_http_status(200)
    end
  end
end
