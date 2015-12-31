json.models do
  json.(@model, :name)
  json.model_types(@model.model_types, :name, :total_price)
end
