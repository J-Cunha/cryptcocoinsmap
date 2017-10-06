require 'rails_helper'

RSpec.describe Address, :type => :model do
  let!(:continent) { build :continent }
  let!(:country) { build :country, continent: continent }
  let!(:user) { build :user }
  let!(:address) { build :address, country: country, user: user }

  context "validating active_record association has_many" do
    it { should have_many(:phone_numbers) }
    it { should have_many(:address_currencies) }
    it { should have_many(:emails) }
    it { should have_many(:currencies) }
    it { should have_many(:address_categories) }
    it { should have_many(:categories) }
  end
end
