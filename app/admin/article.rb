ActiveAdmin.register Article do

  menu false

  permit_params :title, :description, :public

  index do
    selectable_column
    id_column
    column :title
    column :public
    column :created_at
    actions
  end

  form do |f|
    f.inputs do
      f.input :title
      f.input :description, :as => :ckeditor
      f.input :public
    end
    f.actions
  end


  filter :title
  filter :created_at
end
