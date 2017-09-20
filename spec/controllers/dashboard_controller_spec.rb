require 'rails_helper'

RSpec.describe DashboardController, type: :controller do

  describe "GET #index" do
    it "returns http success" do
      get :index
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #addresses" do
    it "returns http success" do
      get :addresses
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #avaliations" do
    it "returns http success" do
      get :avaliations
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #contacts" do
    it "returns http success" do
      get :contacts
      expect(response).to have_http_status(:success)
    end
  end

end
