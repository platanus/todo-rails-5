class TodoListSerializer < ActiveModel::Serializer
  attributes :id, :title, :description
end
