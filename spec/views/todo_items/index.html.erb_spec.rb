require 'rails_helper'

RSpec.describe "todo_items/index", type: :view do
  before(:each) do
    assign(:todo_items, [
      TodoItem.create!(
        :name => "Name",
        :description => "Description",
        :priority => 2
      ),
      TodoItem.create!(
        :name => "Name",
        :description => "Description",
        :priority => 2
      )
    ])
  end

  it "renders a list of todo_items" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Description".to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
  end
end
