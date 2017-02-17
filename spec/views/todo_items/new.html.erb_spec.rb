require 'rails_helper'

RSpec.describe "todo_items/new", type: :view do
  before(:each) do
    assign(:todo_item, TodoItem.new(
      :name => "MyString",
      :description => "MyString",
      :priority => 1
    ))
  end

  it "renders new todo_item form" do
    render

    assert_select "form[action=?][method=?]", todo_items_path, "post" do

      assert_select "input#todo_item_name[name=?]", "todo_item[name]"

      assert_select "input#todo_item_description[name=?]", "todo_item[description]"

      assert_select "input#todo_item_priority[name=?]", "todo_item[priority]"
    end
  end
end
