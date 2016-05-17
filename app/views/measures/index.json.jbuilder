json.array!(@measures) do |measure|
  json.extract! measure, :id, :name_measure, :description_measure, :date_measure, :value_measure
  json.url measure_url(measure, format: :json)
end
