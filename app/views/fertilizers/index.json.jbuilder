json.array!(@fertilizers) do |fertilizer|
  json.extract! fertilizer, :pmu_id, :sub_id, :date, :quantity, :reasoning, :operator, :tech_advisor
  json.url fertilizer_url(fertilizer, format: :json)
end
