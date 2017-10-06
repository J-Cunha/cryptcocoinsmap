require 'rails_helper'

RSpec.describe "address_attachments/show", type: :view do
  before(:each) do
    @address_attachment = assign(:address_attachment, AddressAttachment.create!(
      :address_id => 2,
      :photo => "Photo"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/2/)
    expect(rendered).to match(/Photo/)
  end
end
