json.array!(@logentries) do |logentry|
  json.extract! logentry, :id, :date, :note, :operator, :workers, :pmu_id
  json.url logentry_url(logentry, format: :json)
end
