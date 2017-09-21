require 'rails_helper'

RSpec.describe "donate_infos/show", type: :view do
  before(:each) do
    @donate_info = assign(:donate_info, DonateInfo.create!(
      :currency => nil,
      :name => "Name",
      :address => "Address"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Address/)
  end
end
