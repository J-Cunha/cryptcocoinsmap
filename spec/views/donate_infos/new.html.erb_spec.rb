require 'rails_helper'

RSpec.describe "donate_infos/new", type: :view do
  before(:each) do
    assign(:donate_info, DonateInfo.new(
      :currency => nil,
      :name => "MyString",
      :address => "MyString"
    ))
  end

  it "renders new donate_info form" do
    render

    assert_select "form[action=?][method=?]", donate_infos_path, "post" do

      assert_select "input[name=?]", "donate_info[currency_id]"

      assert_select "input[name=?]", "donate_info[name]"

      assert_select "input[name=?]", "donate_info[address]"
    end
  end
end
