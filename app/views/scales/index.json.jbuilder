json.array!(@scales) do |scale|
  json.extract! scale, :id, :name_scale, :description_scale, :min_number, :max_number
  json.url scale_url(scale, format: :json)
end
