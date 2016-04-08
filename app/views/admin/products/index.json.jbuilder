json.array!(@admin_products) do |admin_product|
  json.extract! admin_product, :id, :user_id, :type, :color, :make, :size, :availability, :price, :material, :seasion, :description, :category_id
  json.url admin_product_url(admin_product, format: :json)
end
