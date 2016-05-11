json.array!(@companies) do |company|
  json.extract! company, :id, :name_company, :description_company
  json.url company_url(company, format: :json)
end
