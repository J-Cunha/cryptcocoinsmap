require "rails_helper"

RSpec.describe CurrenciesController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/currencies").to route_to("currencies#index")
    end

    it "routes to #new" do
      expect(:get => "/currencies/new").to route_to("currencies#new")
    end

    it "routes to #show" do
      expect(:get => "/currencies/1").to route_to("currencies#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/currencies/1/edit").to route_to("currencies#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/currencies").to route_to("currencies#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/currencies/1").to route_to("currencies#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/currencies/1").to route_to("currencies#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/currencies/1").to route_to("currencies#destroy", :id => "1")
    end

  end
end
