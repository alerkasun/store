json.array!(@orders) do |order|
  json.extract! order, :id, :name, :email, :title, :phone, :address, :pay_type
  json.url order_url(order, format: :json)
end
