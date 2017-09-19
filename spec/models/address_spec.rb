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

  context "validating active_record validations" do
    it { expect(subject).to validate_presence_of(:business_name) }
    it { should validate_presence_of(:country) }
    it { is_expected.to validate_presence_of(:state) }
    it { is_expected.to validate_presence_of(:city) }
    it { is_expected.to validate_presence_of(:zip_code) }
    it { is_expected.to validate_presence_of(:street) }
    it { is_expected.to validate_presence_of(:number) }
  end
end
