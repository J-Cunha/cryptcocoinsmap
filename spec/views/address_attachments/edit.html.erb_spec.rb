require 'rails_helper'

RSpec.describe "address_attachments/edit", type: :view do
  before(:each) do
    @address_attachment = assign(:address_attachment, AddressAttachment.create!(
      :address_id => 1,
      :photo => "MyString"
    ))
  end

  it "renders the edit address_attachment form" do
    render

    assert_select "form[action=?][method=?]", address_attachment_path(@address_attachment), "post" do

      assert_select "input[name=?]", "address_attachment[address_id]"

      assert_select "input[name=?]", "address_attachment[photo]"
    end
  end
end
