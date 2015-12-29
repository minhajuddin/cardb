require 'rails_helper'

RSpec.describe Model, type: :model do
  it { should validate_uniqueness_of(:model_slug) }
end

# == Schema Information
#
# Table name: models
#
#  id              :integer          not null, primary key
#  name            :string
#  model_slug      :string
#  organization_id :integer
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#
# Indexes
#
#  index_models_on_model_slug       (model_slug) UNIQUE
#  index_models_on_organization_id  (organization_id)
#
