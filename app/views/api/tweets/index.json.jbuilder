json.array!(@tweets) do |tweet|
  json.extract! tweet, :id, :body, :author, :created_at
end
