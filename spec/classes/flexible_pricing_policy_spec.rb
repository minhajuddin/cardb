require 'rails_helper'

RSpec.describe FlexiblePricingPolicy, type: :model do
  describe "#total_price" do
    it "multiplies margin with the base price" do
      policy = FlexiblePricingPolicy.new
      allow(policy).to receive(:margin).and_return(1.5)
      expect(policy.total_price(10)).to eq(15.0)
    end
  end

  describe "#margin" do
    it "returns the count of letter a divided by 100 from the response" do
      policy = FlexiblePricingPolicy.new
      allow(policy).to receive(:response).and_return("status is STATUS yayya Status aaaaa")
      expect(policy.margin).to eq(0.1)
    end
  end
end

