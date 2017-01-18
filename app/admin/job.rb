ActiveAdmin.register Job do

  permit_params :name, :email, :workspace, :message, :curriculum

end
