json.array!(@card_details) do |card_detail|
  json.extract! card_detail, :id, :name_on_card, :card_number, :card_expiry_date, :cvv, :user_id
  json.url card_detail_url(card_detail, format: :json)
end
