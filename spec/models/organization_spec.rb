require 'rails_helper'

RSpec.describe Organization, type: :model do
  it { should validate_inclusion_of(:organization_type).in_array(Organization::TYPES) }
  it { should validate_inclusion_of(:pricing_policy).in_array(Organization::PRICING_POLICIES) }
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
