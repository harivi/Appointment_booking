class CreatePatients < ActiveRecord::Migration[8.0]
  def change
    create_table :patients do |t|
      t.string :name
      t.string :phone
      t.string :email

      t.timestamps
    end
  end
end
