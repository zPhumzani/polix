json.array!(@products) do |product|
  json.extract! product, :id, :user_id, :type, :color, :make, :size, :availability, :price, :material, :seasion, :description
  json.url product_url(product, format: :json)
end
