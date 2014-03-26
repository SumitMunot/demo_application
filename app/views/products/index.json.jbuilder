json.array!(@products) do |product|
  json.extract! product, :id, :title, :description, :price, :category, :subcategory, :brand, :unit
  json.url product_url(product, format: :json)
end
