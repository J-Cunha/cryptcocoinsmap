require 'rails_helper'

RSpec.describe "address_attachments/index", type: :view do
  before(:each) do
    assign(:address_attachments, [
      AddressAttachment.create!(
        :address_id => 2,
        :photo => "Photo"
      ),
      AddressAttachment.create!(
        :address_id => 2,
        :photo => "Photo"
      )
    ])
  end

  it "renders a list of address_attachments" do
    render
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => "Photo".to_s, :count => 2
  end
end
