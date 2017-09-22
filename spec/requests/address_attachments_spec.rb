require 'rails_helper'

RSpec.describe "AddressAttachments", type: :request do
  describe "GET /address_attachments" do
    it "works! (now write some real specs)" do
      get address_attachments_path
      expect(response).to have_http_status(200)
    end
  end
end
