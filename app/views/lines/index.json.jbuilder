json.array!(@lines) do |line|
  json.extract! line, :pmu_id, :sub_id, :date, :quantity, :reasoning, :operator, :tech_advisor
  json.url line_url(line, format: :json)
end
