class CreateRecords < ActiveRecord::Migration[5.2]
  def change
    create_table :records do |t|
      t.string :Customer
      t.integer :Phone
      t.datetime :Time
      t.text :Description

      t.timestamps
    end
  end
end
