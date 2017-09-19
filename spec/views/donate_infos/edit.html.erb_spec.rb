require 'rails_helper'

RSpec.describe "donate_infos/edit", type: :view do
  before(:each) do
    @donate_info = assign(:donate_info, DonateInfo.create!(
      :currency => nil,
      :name => "MyString",
      :address => "MyString"
    ))
  end

  it "renders the edit donate_info form" do
    render

    assert_select "form[action=?][method=?]", donate_info_path(@donate_info), "post" do

      assert_select "input[name=?]", "donate_info[currency_id]"

      assert_select "input[name=?]", "donate_info[name]"

      assert_select "input[name=?]", "donate_info[address]"
    end
  end
end
