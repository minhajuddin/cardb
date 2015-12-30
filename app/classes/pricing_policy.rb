class PricingPolicy
  POLICIES = {
    "Fixed" => FixedPricingPolicy
  }
  def initialize(pricing_policy)
    POLICIES[pricing_policy].new
  end
end
