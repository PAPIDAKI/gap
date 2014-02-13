json.array!(@clitems) do |clitem|
  json.extract! clitem, :number, :module, :area, :about, :for, :control_point, :compliance_criteria
  json.url clitem_url(clitem, format: :json)
end
