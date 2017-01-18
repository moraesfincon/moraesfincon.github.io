class CreateJobs < ActiveRecord::Migration[5.0]
  def change
    create_table :jobs do |t|
      t.string :name
      t.string :email
      t.string :workspace
      t.text :message
      t.string :curriculum

      t.timestamps
    end
  end
end
