require 'rails_helper'

RSpec.describe "address_attachments/new", type: :view do
  before(:each) do
    assign(:address_attachment, AddressAttachment.new(
      :address_id => 1,
      :photo => "MyString"
    ))
  end

  it "renders new address_attachment form" do
    render

    assert_select "form[action=?][method=?]", address_attachments_path, "post" do

      assert_select "input[name=?]", "address_attachment[address_id]"

      assert_select "input[name=?]", "address_attachment[photo]"
    end
  end
end
