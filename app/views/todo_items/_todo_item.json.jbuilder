json.extract! todo_item, :id, :name, :description, :due_date, :priority, :created_at, :updated_at
json.url todo_item_url(todo_item, format: :json)