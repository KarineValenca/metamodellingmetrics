json.array!(@questions) do |question|
  json.extract! question, :id, :question_name, :question_description
  json.url question_url(question, format: :json)
end
