json.array!(@epembashes) do |epembash|
  json.extract! epembash, :id, :farmako_id, :crop, :diast_pros, :comments
  json.url epembash_url(epembash, format: :json)
end
