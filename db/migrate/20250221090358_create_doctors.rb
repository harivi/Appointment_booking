class CreateDoctors < ActiveRecord::Migration[8.0]
  def change
    create_table :doctors do |t|
      t.string :name
      t.string :specialty
      t.string :address
      t.date :joining_date

      t.timestamps
    end
  end
end
