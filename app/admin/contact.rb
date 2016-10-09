ActiveAdmin.register Contact do
  menu false
  permit_params :name, :occupation, :email, :phone, :subject, :message

  index do
    selectable_column
    id_column
    column :name
    column :email
    column :phone
    column :subject
    column :created_at
    actions
  end

  


  filter :name
  filter :email
  filter :created_at
end