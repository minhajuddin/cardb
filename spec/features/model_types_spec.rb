require 'rails_helper'

describe "Model Types", :type => :feature do
  describe "GET models/:model_slug/model_types" do

    let(:organization) { Organization.create!(name: 'BMW', public_name: 'Flexible BMW', organization_type: "Show room", pricing_policy: "Flexible") }
    let(:model) { organization.models.create!(name: "Car 1" , model_slug: "c1") }

    it "returns a 404 if model is not found" do
      visit "models/nonexistent/model_types"
      expect(page.status_code).to eq(404)
    end

    it "returns a 200 if found" do
      visit "models/#{model.model_slug}/model_types"
      expect(page.status_code).to eq(200)
    end

    it "returns all model_types if a model is found" do
      visit "models/#{model.model_slug}/model_types"
      response = JSON.parse(page.body)
      expect(response['models'])
    end

  end
end
