json.array!(@systatiks) do |systatik|
  json.extract! systatik, :id, :kodikos, :onomadron
  json.url systatik_url(systatik, format: :json)
end
