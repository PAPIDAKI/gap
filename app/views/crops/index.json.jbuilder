json.array!(@crops) do |crop|
  json.extract! crop, :id, :kathg, :eidos, :gonoma
  json.url crop_url(crop, format: :json)
end
