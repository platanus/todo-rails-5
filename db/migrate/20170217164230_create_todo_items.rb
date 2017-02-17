class CreateTodoItems < ActiveRecord::Migration[5.0]
  def change
    create_table :todo_items do |t|
      t.string :name
      t.string :description
      t.date :due_date
      t.integer :priority

      t.timestamps
    end
  end
end
