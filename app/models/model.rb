class Model < ActiveRecord::Base
  # validations
  # NOTE: @adam model_slug isn't specified to be unique but the way it is used in the API it should be unique
  validates_uniqueness_of :model_slug

  # associations
  belongs_to :organization
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
