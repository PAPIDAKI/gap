json.array!(@subs) do |sub|
  json.extract! sub, :name
  json.url sub_url(sub, format: :json)
end
