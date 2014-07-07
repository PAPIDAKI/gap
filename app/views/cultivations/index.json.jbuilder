json.array!(@cultivations) do |cultivation|
  json.extract! cultivation, :id, :date, :note, :operator, :workers_num
  json.url cultivation_url(cultivation, format: :json)
end
