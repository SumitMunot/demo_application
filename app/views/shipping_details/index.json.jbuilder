json.array!(@shipping_details) do |shipping_detail|
  json.extract! shipping_detail, :id, :full_address_name, :address_line_one, :address_line_two, :city_town, :state, :zip, :country, :user_id
  json.url shipping_detail_url(shipping_detail, format: :json)
end
