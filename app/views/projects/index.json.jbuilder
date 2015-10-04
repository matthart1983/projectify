json.array!(@projects) do |project|
  json.extract! project, :id, :summary, :customer, :projectManager, :startDate, :transactionalBusinessManager, :goLiveDate
  json.url project_url(project, format: :json)
end
