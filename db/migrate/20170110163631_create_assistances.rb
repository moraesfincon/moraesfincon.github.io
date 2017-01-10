class CreateAssistances < ActiveRecord::Migration[5.0]
  def change
    create_table :assistances do |t|
      t.string :name
      t.string :email
      t.string :phone
      t.string :priority
      t.string :subject
      t.text :message
      t.string :status

      t.timestamps
    end
  end
end
