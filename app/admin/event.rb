ActiveAdmin.register Event do

# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
# permit_params :list, :of, :attributes, :on, :model
#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if params[:action] == 'create' && current_user.admin?
#   permitted
# end
	menu false

  permit_params :title, :content

  index do
    selectable_column
    id_column
    column :title
    column :created_at
    actions
  end

  form do |f|
    f.inputs do
      f.input :title
      f.input :content, as: :ckeditor
    end
    f.actions
  end


  filter :title
  filter :created_at


end
