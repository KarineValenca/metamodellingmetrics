json.array!(@projects) do |project|
  json.extract! project, :id, :name_project, :start_date_project
  json.url project_url(project, format: :json)
end
