require 'rails_helper'

RSpec.describe FixedPricingPolicy, type: :model do
  describe "#total_price" do
    it "adds margin to the base price" do
      policy = PrestigePricingPolicy.new
      allow(policy).to receive(:margin).and_return(10)
      expect(policy.total_price(20)).to eq(30)
    end
  end

  describe "#margin" do
    it "returns the count of statuses from the github response" do
      policy = FixedPricingPolicy.new
      allow(policy).to receive(:github_response).and_return("status is STATUS yayya Status")
      expect(policy.margin).to eq(3)
    end
  end
end

