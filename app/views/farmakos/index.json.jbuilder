json.array!(@farmakos) do |farmako|
  json.extract! farmako, :id, :gbonoma, :emporikhon, :hmer_egris, :telos_egri
  json.url farmako_url(farmako, format: :json)
end
