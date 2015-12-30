require 'rails_helper'

RSpec.describe FixedPricingPolicy, type: :model do
  describe "#margin" do
    it "returns the count of statuses from the github response" do
      policy = FixedPricingPolicy.new
      allow(policy).to receive(:github_response).and_return("status is STATUS yayya Status")
      expect(policy.margin).to eq(3)
    end
  end
end

