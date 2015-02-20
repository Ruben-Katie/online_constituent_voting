json.array!(@bills) do |bill|
  json.extract! bill, :id, :name, :status, :staff_id, :real_vote
  json.url bill_url(bill, format: :json)
end
