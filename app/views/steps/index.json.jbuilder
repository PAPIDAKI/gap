json.array!(@steps) do |step|
  json.extract! step, :title, :description, :step_accountable, :procedure_id
  json.url step_url(step, format: :json)
end
