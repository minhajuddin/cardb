class Organization < ActiveRecord::Base
  TYPES = ["Show room", "Service", "Dealer"]
  PRICING_POLICIES = ["Flexible", "Fixed", "Prestige"]

  validates_inclusion_of :organization_type, in: TYPES
  validates_inclusion_of :pricing_policy, in: PRICING_POLICIES
end

# == Schema Information
#
# Table name: organizations
#
#  id                :integer          not null, primary key
#  name              :string
#  public_name       :string
#  organization_type :string
#  pricing_policy    :string
#  created_at        :datetime         not null
#  updated_at        :datetime         not null
#
