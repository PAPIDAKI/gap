json.array!(@asthenia) do |asthenium|
  json.extract! asthenium, :id, :code_asten, :astenia, :nastenia
  json.url asthenium_url(asthenium, format: :json)
end
