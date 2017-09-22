require "rails_helper"

RSpec.describe AddressAttachmentsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/address_attachments").to route_to("address_attachments#index")
    end

    it "routes to #new" do
      expect(:get => "/address_attachments/new").to route_to("address_attachments#new")
    end

    it "routes to #show" do
      expect(:get => "/address_attachments/1").to route_to("address_attachments#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/address_attachments/1/edit").to route_to("address_attachments#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/address_attachments").to route_to("address_attachments#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/address_attachments/1").to route_to("address_attachments#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/address_attachments/1").to route_to("address_attachments#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/address_attachments/1").to route_to("address_attachments#destroy", :id => "1")
    end

  end
end
