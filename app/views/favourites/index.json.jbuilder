json.array!(@favourites) do |favourite|
  json.extract! favourite, :id, :user_id, :story_id
  json.url favourite_url(favourite, format: :json)
end
