class TodoItemsController < InheritedResources::Base

  private

    def todo_item_params
      params.require(:todo_item).permit(:name, :description, :due_date, :priority)
    end
end

