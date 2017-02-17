class AddTodoListToTodoItem < ActiveRecord::Migration[5.0]
  def change
    add_reference :todo_items, :todo_list, index: true
  end
end
