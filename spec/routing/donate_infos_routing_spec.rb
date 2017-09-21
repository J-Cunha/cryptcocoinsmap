require "rails_helper"

RSpec.describe DonateInfosController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/donate_infos").to route_to("donate_infos#index")
    end

    it "routes to #new" do
      expect(:get => "/donate_infos/new").to route_to("donate_infos#new")
    end

    it "routes to #show" do
      expect(:get => "/donate_infos/1").to route_to("donate_infos#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/donate_infos/1/edit").to route_to("donate_infos#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/donate_infos").to route_to("donate_infos#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/donate_infos/1").to route_to("donate_infos#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/donate_infos/1").to route_to("donate_infos#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/donate_infos/1").to route_to("donate_infos#destroy", :id => "1")
    end

  end
end
