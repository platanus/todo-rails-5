ActiveAdmin.register TodoList do
  permit_params :title, :description

# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if params[:action] == 'create' && current_user.admin?
#   permitted
# end

  index do
    id_column
    column :title
    column :description
    image_column :image, style: :thumb
    actions
  end

  show do
    attributes_table do
      row :title
      row :description
      image_row :image, style: :medium
    end
  end

end
