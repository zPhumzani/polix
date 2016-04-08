json.array!(@admin_line_items) do |admin_line_item|
  json.extract! admin_line_item, :id, :product_id, :cart_id
  json.url admin_line_item_url(admin_line_item, format: :json)
end
