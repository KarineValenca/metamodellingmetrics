json.array!(@metrics) do |metric|
  json.extract! metric, :id, :metric_name, :description_metric, :calculus_date
  json.url metric_url(metric, format: :json)
end
