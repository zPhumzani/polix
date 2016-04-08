json.array!(@admin_carts) do |admin_cart|
  json.extract! admin_cart, :id
  json.url admin_cart_url(admin_cart, format: :json)
end
