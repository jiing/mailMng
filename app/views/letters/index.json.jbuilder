json.array!(@letters) do |letter|
  json.extract! letter, :id, :category_id, :user_id, :received_time
  json.url letter_url(letter, format: :json)
end
