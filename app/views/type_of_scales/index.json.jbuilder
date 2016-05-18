json.array!(@type_of_scales) do |type_of_scale|
  json.extract! type_of_scale, :id, :name_type_scale, :description_type_scale
  json.url type_of_scale_url(type_of_scale, format: :json)
end
