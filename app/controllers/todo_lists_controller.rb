class TodoListsController < InheritedResources::Base
  before_action :authenticate_user!

  private

    def todo_list_params
      params.require(:todo_list).permit(:title, :description)
    end
end
