json.array!(@solutions) do |solution|
  json.extract! solution, :id, :brand, :active_ingredient, :application_for, :recomended_dosage
  json.url solution_url(solution, format: :json)
end
