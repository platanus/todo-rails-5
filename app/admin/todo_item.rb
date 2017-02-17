ActiveAdmin.register TodoItem do
  permit_params :name, :description, :due_date, :priority

  filter :priority, as: :range_select


  form do |f|
    f.inputs "Details" do
      f.input :todo_list, as: :select, include_blank: false
      f.input :name
      f.input :description, label: "Desc"
      f.input :priority
    end
    f.actions
  end
end
