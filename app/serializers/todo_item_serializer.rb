class TodoItemSerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :due_date, :priority
end
