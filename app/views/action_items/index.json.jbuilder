json.array!(@action_items) do |action_item|
  json.extract! action_item, :id, :assignee, :project, :description, :dueDate
  json.url action_item_url(action_item, format: :json)
end
