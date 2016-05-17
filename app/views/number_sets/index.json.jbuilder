json.array!(@number_sets) do |number_set|
  json.extract! number_set, :id, :name_number_set, :description_number_set
  json.url number_set_url(number_set, format: :json)
end
