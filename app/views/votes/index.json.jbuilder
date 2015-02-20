json.array!(@votes) do |vote|
  json.extract! vote, :id, :constituent_id, :bill_id, :response
  json.url vote_url(vote, format: :json)
end
