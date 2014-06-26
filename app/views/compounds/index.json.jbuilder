json.array!(@compounds) do |compound|
  json.extract! compound, :compound_code, :issued_at, :location, :compound_type, :customer_id, :amount, :compound_date, :description, :status
  json.url compound_url(compound, format: :json)
end
