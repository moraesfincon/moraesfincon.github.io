ActiveAdmin.register Assistance do
  permit_params :name, :email, :phone, :priority, :subject, :message, :status

  index do
    selectable_column
    id_column
    column :name
    column :email
    column :phone
    column :subject
    column :status
    actions
  end




  filter :name
  filter :email
  filter :status
  filter :created_at
end
