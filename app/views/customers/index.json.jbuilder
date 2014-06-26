json.array!(@customers) do |customer|
  json.extract! customer, :customer_no, :name, :address, :other_customer_no
  json.url customer_url(customer, format: :json)
end
