class AddsForeignKeyToSnacks < ActiveRecord::Migration[5.1]
  def change
    drop_table :snacks

    create_table :snacks do |t|
      t.string :name
      t.float :price
      t.references :machine, foreign_key: true
    end

  end
end
