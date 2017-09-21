require 'rails_helper'

RSpec.describe "donate_infos/index", type: :view do
  before(:each) do
    assign(:donate_infos, [
      DonateInfo.create!(
        :currency => nil,
        :name => "Name",
        :address => "Address"
      ),
      DonateInfo.create!(
        :currency => nil,
        :name => "Name",
        :address => "Address"
      )
    ])
  end

  it "renders a list of donate_infos" do
    render
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Address".to_s, :count => 2
  end
end
