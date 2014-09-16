json.array!(@droncrops) do |droncrop|
  json.extract! droncrop, :id, :kodikos, :code_fyta, :crops
  json.url droncrop_url(droncrop, format: :json)
end
