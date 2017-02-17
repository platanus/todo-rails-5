class TodoItem < ApplicationRecord
  belongs_to :todo_list
end

# == Schema Information
#
# Table name: todo_items
#
#  id           :integer          not null, primary key
#  name         :string
#  description  :string
#  due_date     :date
#  priority     :integer
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#  todo_list_id :integer
#
# Indexes
#
#  index_todo_items_on_todo_list_id  (todo_list_id)
#
