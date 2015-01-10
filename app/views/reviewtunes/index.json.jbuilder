json.array!(@reviewtunes) do |reviewtune|
  json.extract! reviewtune, :id, :comment
  json.url reviewtune_url(reviewtune, format: :json)
end
