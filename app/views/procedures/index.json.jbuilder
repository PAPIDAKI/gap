json.array!(@procedures) do |procedure|
  json.extract! procedure, :title, :result, :accountable, :clitem_id
  json.url procedure_url(procedure, format: :json)
end
