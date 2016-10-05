ActiveAdmin.register Newsletter do
	permit_params :email

	index do
    selectable_column
    id_column
    column :email
    column :created_at
    actions
  end

	form do |f|
    f.inputs do
      f.input :email
    end
    f.actions
  end


  filter :email
end
