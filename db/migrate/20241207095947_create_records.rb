class CreateRecords < ActiveRecord::Migration[6.1]
  def change
    create_table :records do |t|
      t.string :field1
      t.string :field2
      t.string :field3
      t.text :field4

      t.timestamps
    end
  end
end
