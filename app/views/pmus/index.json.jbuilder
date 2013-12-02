json.array!(@pmus) do |pmu|
  json.extract! pmu, :produce, :variety, :location, :nearest_village, :address, :plantation_year, :number_of_trees, :area, :expected_production
  json.url pmu_url(pmu, format: :json)
end
