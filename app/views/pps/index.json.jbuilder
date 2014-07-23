json.array!(@pps) do |pp|
  json.extract! pp, :id, :quantity, :logentry_id
  json.url pp_url(pp, format: :json)
end
