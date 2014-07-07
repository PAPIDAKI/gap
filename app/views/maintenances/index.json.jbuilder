json.array!(@maintenances) do |maintenance|
  json.extract! maintenance, :id, :date, :note, :operator, :workers_num
  json.url maintenance_url(maintenance, format: :json)
end
