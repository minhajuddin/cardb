require 'rails_helper'

RSpec.describe ModelType, type: :model do
  it { should validate_uniqueness_of(:model_type_slug) }
end

# == Schema Information
#
# Table name: model_types
#
#  id              :integer          not null, primary key
#  name            :string
#  model_type_slug :string
#  model_type_code :string
#  base_price      :decimal(, )
#  model_id        :integer
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#
# Indexes
#
#  index_model_types_on_model_id         (model_id)
#  index_model_types_on_model_type_slug  (model_type_slug)
#
