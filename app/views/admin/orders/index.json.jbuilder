json.array!(@admin_orders) do |admin_order|
  json.extract! admin_order, :id, :name, :address, :email, :pay_type
  json.url admin_order_url(admin_order, format: :json)
end
