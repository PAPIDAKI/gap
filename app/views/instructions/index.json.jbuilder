json.array!(@instructions) do |instruction|
  json.extract! instruction, :description
  json.url instruction_url(instruction, format: :json)
end
